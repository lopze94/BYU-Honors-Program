echo Runing update script on VPS
echo Opening nuxt_honors folder and updating it
ssh lopze94@kapok.ventures cd /var/www/kapok.ventures/html/nuxt_honors & ssh lopze94@kapok.ventures git pull


#cd /var/www/kapok.ventures/html/nuxt_honors
#echo Updating Kapok... Pulling new changes from repositories
#git pull
#echo Stoping all services
#forever stopall
#echo Building...
#npm run build
#echo restarting services
#source .env
#forever start server.js
#NODE_ENV=production forever start server/index.js
#echo All Done!
