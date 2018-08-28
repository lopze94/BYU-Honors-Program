import Vue from 'vue';
import Vuex from 'vuex';

import axios from 'axios';

Vue.use(Vuex);

const getAuthHeader = () => {
  return {
    headers: {
      'Authorization': localStorage.getItem('token'),
    }
  };
}

const createStore = () => {
  return new Vuex.Store({
    state: {
      user: {},
      token: '',
      loggedIn: false,
      loginError: '',
      registerError: '',
      spotlight: [],
      stories: [],
      directory: []
    },
    getters: {
      user: state => state.user,
      getToken: state => state.token,
      loggedIn: state => {
        if (state.token === '')
          return false;
        return true;
      },
      loginError: state => state.loginError,
      registerError: state => state.registerError,
      spotlight: state => state.spotlight,
      stories: state => state.stories,
      directory: state => state.directory,
    },
    mutations: {
      setUser(state, user) {
        state.user = user;
      },
      setToken(state, token) {
        state.token = token;
        if (token === '')
          localStorage.removeItem('token');
        else
          localStorage.setItem('token', token)
      },
      setLogin(state, status) {
        state.loggedIn = status;
      },
      setLoginError(state, message) {
        state.loginError = message;
      },
      setRegisterError(state, message) {
        state.registerError = message;
      },
      setSpotlight(state, spotlight) {
        state.spotlight = spotlight;
      },
      setStories(state, stories) {
        state.stories = stories;
      },
      setDirectory(state, directory) {
        state.directory = directory;
      },
    },
    actions: {
      // Initialize //
      initialize(context) {
        let token = localStorage.getItem('token');
        if (token) {
          // see if we can use the token to get my user account
          axios.get("/api/me", getAuthHeader()).then(response => {
            context.commit('setToken', token);
            context.commit('setUser', response.data.user);
          }).catch(err => {
            // remove token and user from state
            context.commit('setUser', {});
            context.commit('setToken', '');
          });
        }
      },
      // Registration, Login //
      register(context, user) {
        return axios.post("/api/users", user).then(response => {
          context.commit('setUser', response.data.user);
          context.commit('setToken', response.data.token);
          context.commit('setRegisterError', "");
          context.commit('setLoginError', "");
        }).catch(error => {
          context.commit('setUser', {});
          context.commit('setToken', '');
          context.commit('setLoginError', "");
          if (error.response) {
            if (error.response.status === 403)
              context.commit('setRegisterError', "That email address already has an account.");
            else if (error.response.status === 409)
              context.commit('setRegisterError', "That user name is already taken.");
            return;
          }
          context.commit('setRegisterError', "Sorry, your request failed. We will look into it.");
        });
      },
      login(context, user) {
        return axios.post("/api/login", user).then(response => {
          context.commit('setUser', response.data.user);
          context.commit('setToken', response.data.token);
          context.commit('setRegisterError', "");
          context.commit('setLoginError', "");
        }).catch(error => {
          context.commit('setUser', {});
          context.commit('setToken', '');
          context.commit('setRegisterError', "");
          if (error.response) {
            if (error.response.status === 403 || error.response.status === 400)
              context.commit('setLoginError', "Invalid login.");
            context.commit('setRegisterError', "");
            return;
          }
          context.commit('setLoginError', "Sorry, your request failed. We will look into it.");
        });
      },
      logout(context, user) {
        context.commit('setUser', {});
        context.commit('setToken', '');
      },
      // Users //
      // get a user, must supply {username: username} of user you want to get
      getUser(context, user) {
        return axios.get("/api/users/" + user.id).then(response => {
          context.commit('setUserView', response.data.user);
        }).catch(err => {
          console.log("getUser failed:", err);
        });
      },
      // Homepage Stories //
      getSpotlight(context, category) {
        axios.get("/api/spotlight/" + category).then(response => {
          context.commit('setSpotlight', response.data.spotlight);
        }).catch(err => {
          console.log("getSpotlight failed:", err);
        });
      },
      addSpotlight(context, spotlight) {
        // setup headers
        let headers = getAuthHeader();
        headers.headers['Content-Type'] = 'multipart/form-data'
        // setup form data
        let formData = new FormData();
        formData.append('first_name', spotlight.first_name);
        formData.append('last_name', spotlight.last_name);
        formData.append('major', spotlight.major);
        formData.append('minor', spotlight.minor);
        formData.append('short_text', spotlight.short_text);
        formData.append('long_text', spotlight.long_text);
        formData.append('graduation', spotlight.graduation);
        formData.append('category', spotlight.category);
        if (spotlight.image) {
          formData.append('image', spotlight.image);
        }
        axios.post("/api/spotlight", formData, headers).then(response => {
          return context.dispatch('getSpotlight', 3);
        }).catch(err => {
          console.log("addSpotlight failed:", err);
        });
      },
      deleteSpotlight(context, student) {
        let headers = getAuthHeader();
        return axios.delete("/api/spotlight/" + student.id + "/" + student.image_path, headers).then(response => {
          context.dispatch('getSpotlight', '%');
        }).catch(err => {
          console.log("DeleteSpotlight failed:", err);
        });
      },


      // for the STORIES
      getStories(context) {
        axios.get("/api/stories").then(response => {
          context.commit('setStories', response.data.stories);
        }).catch(err => {
          console.log("getStories failed:", err);
        });
      },
      getStory(context, id) {
        axios.get("/api/stories/" + id).then(response => {
          context.commit('setStories', response.data.stories);
        }).catch(err => {
          console.log("getStories failed:", err);
        });
      },
      addStory(context, stories) {
        // setup headers
        let headers = getAuthHeader();
        headers.headers['Content-Type'] = 'multipart/form-data'
        // setup form data
        let formData = new FormData();
        formData.append('title', stories.title);
        formData.append('subtitle', stories.subtitle);
        formData.append('description', stories.description);
        formData.append('text', stories.text);
        formData.append('link_text', stories.link_text);
        formData.append('author', stories.author);
        if (stories.image) {
          formData.append('image', stories.image);
        }
        if (!stories.link) {
          formData.append('link', '');
        } else {
          formData.append('link', stories.link)
        }
        axios.post("/api/stories", formData, headers).then(response => {
          return context.dispatch('getStories');
        }).catch(err => {
          console.log("addStories failed:", err);
        });
      },
      deleteStory(context, student) {
        return axios.delete("/api/spotlight/" + student.id + "/" + student.image_path, student).then(response => {
          context.dispatch('getSpotlight');
        }).catch(err => {
          console.log("unfollow failed:", err);
        });
      },
      getFaculty(context) {
        axios.get("/api/directory").then(response => {
          context.commit('setDirectory', response.data.directory);
        }).catch(err => {
          console.log("getDirectory failed:", err);
        });
      },
      sendMailNotification(context, message) {
        return axios.post("/api/send", message).then(response => {}).catch(err => {
          console.log("Send Notification Failed:", err);
        })
      },
    }
  })
}


export default createStore
