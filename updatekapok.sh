echo Opening nuxt_honors folder
cd /var/www/kapok.ventures/html/nuxt_honors
echo Updating Kapok... Pulling new changes from repositories
git pull
echo Stoping all services
forever stopall
echo Building...
npm run build
echo restarting services
source .env
forever start server.js
forever start server/index.js
echo Done :)
