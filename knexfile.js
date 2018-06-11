// Update with your config settings.

module.exports = {

  development: {
    client: 'mysql',
    connection: {
      host: '127.0.0.1',
      user: 'root',
      password: 'Lopzi!482310',
      database: 'byuhonors',
      charset: 'utf8',
    }
  },

  staging: {
    client: 'mysql',
    connection: {
      database: 'byuhonors',
      user:     'root',
      password: 'Lopzi!482310'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },

  production: {
    client: 'mysql',
    connection: {
      database: 'byuhonors',
      user:     'root',
      password: 'Lopzi!482310'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }

};
