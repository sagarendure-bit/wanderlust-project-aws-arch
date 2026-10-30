curl -i http://127.0.0.1:5000
cd wanderlust/frontend/
npm install
ls -la
nano .env.sample 
cp -n .env.sample .env.local
npm run build
sudo apt update
sudo apt install -y nginx
ls -la
cat .env.sample 
cat .env.local 
npm install
npm run build
cd ~/wanderlust/backend
cat server.js
cd ..
cd frontend/
sudo nano /etc/nginx/sites-available/wanderlust
sudo ln -s /etc/nginx/sites-available/wanderlust /etc/nginx/sites-enabled/wanderlust
sudo rm -f /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl enable --now nginx
sudo systemctl reload nginx
npm run build
echo "===== NGINX STATUS ====="
sudo systemctl status nginx --no-pager -l
echo "===== NGINX ERROR LOG ====="
sudo tail -n 50 /var/log/nginx/error.log
echo "===== WEBSITE FILES ====="
ls -la /var/www/wanderlust/
echo "===== LOCAL WEBSITE TEST ====="
curl -sS -o /dev/null -w "HTTP status: %{http_code}\n" http://127.0.0.1/
echo "===== BACKEND TEST ====="
curl -i --max-time 5 http://127.0.0.1:5000/
echo "===== NGINX CONFIGURATION ====="
sudo cat /etc/nginx/sites-available/wanderlust
cd ~/wanderlust/frontend
# Confirm the build exists
ls -la dist/
# Create Nginx's website directory and copy the build
sudo mkdir -p /var/www/wanderlust
sudo cp -r dist/. /var/www/wanderlust/
# Check that index.html was copied
ls -l /var/www/wanderlust/index.html
# Reload Nginx
sudo nginx -t && sudo systemctl reload nginx
npm start
cd ~/wanderlust
cat frontend/src/constants/images.ts
curl -i --max-time 10 http://127.0.0.1/api/posts
curl -I -L --max-time 10 'https://i.ibb.co/3z72vmc/clean-lake-mountains-range-trees-nature-4k.webp'
curl -i --max-time 10 http://127.0.0.1/api/posts
mongosh wanderlust --quiet --eval 'db.posts.find({}, {title:1, image:1, imageUrl:1, img:1, _id:0}).limit(3).toArray()'
cd ~/wanderlust
grep -RInE 'imageLink|image-link|imageUrl|img src|<img|Image' frontend/src   --exclude-dir=node_modules
cat frontend/.env.local
grep -RIn 'VITE_API_PATH' frontend/src
mongosh wanderlust --quiet --eval 'db.posts.find({}, {title:1, imageLink:1, _id:0}).limit(3).toArray()'
cd ~/wanderlust/frontend
echo 'VITE_API_PATH="/api"' > .env.local
npm run build
sudo cp -r dist/. /var/www/wanderlust/
sudo systemctl reload nginx
curl -s http://127.0.0.1/api/posts | head -c 500
cd ~/wanderlust/frontend
echo 'VITE_API_PATH=""' > .env.local
npm run build
sudo cp -r dist/. /var/www/wanderlust/
sudo systemctl reload nginx
grep -oE '.{0,60}/api/posts.{0,60}' dist/assets/*.js | head
git clone https://github.com/LondheShubham153/wanderlust.git
ls
cd wanderlust/
sudo apt update
npm i
sudp apt install npm
sudo apt install npm
sudo apt install -y git curl nginx
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm use --lts
node -v
npm -v
git -v
sudo systemctl enable --now mongod
sudo systemctl status mongodsudo systemctl enable --now mongod
sudo systemctl status mongod
lsb_release -a
mongod --version
dpkg --print-architecture
sudo apt-get update
sudo apt-get install -y gnupg curl
curl -fsSL https://pgp.mongodb.com/server-9.asc |   sudo gpg -o /usr/share/keyrings/mongodb-server-9.gpg   --dearmor
echo "deb [ arch=arm64 signed-by=/usr/share/keyrings/mongodb-server-9.gpg ] https://repo.mongodb.org/apt/ubuntu resolute/mongodb-org/9.0 multiverse" |   sudo tee /etc/apt/sources.list.d/mongodb-org-9.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl enable --now mongod
sudo systemctl status mongod --no-pager
mongosh --eval 'db.runCommand({ ping: 1 })'
npm install
ls -la
cat package.json
npm run installer
ls
ls -la
nano .env
ls -a
cd frontend/
ls -a
cd ..
cd backend/
ls -a
nano .env.sample 
ls -l ~/wanderlust/backend/data/sample_posts.json
mongoimport --version
mongoimport --db wanderlust   --collection posts   --file ./data/sample_posts.json   --jsonArray
npm start
cd ~/wanderlust/backend
cat config/db.js
cat .env.sample
cd ~/wanderlust/backend
cp -n .env.sample .env
cat config/utils.js
npm start
curl -I http://127.0.0.1/
curl -i http://127.0.0.1/
curl -i http://127.0.0.1/api/posts
curl -I http://127.0.0.1/
curl -s http://127.0.0.1:5000/api/posts | head -c 2000
cd ~/wanderlust
grep -RInE 'imageUrl|imageURL|image_url|image:|photo|unsplash|cloudinary' frontend/src backend   --exclude-dir=node_modules
curl -i --max-time 5 http://127.0.0.1:5000/
npm start
cd ~/wanderlust/backend
npm start
sudo npm install -g pm2
cd ~/wanderlust/backend
pm2 start server.js --name wanderlust-backend
pm2 save
ls 
cd w
cd wanderlust/
# SSH into the instance, then (for nginx):
sudo apt update
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx -d sagartheapp.work.gd -d www.sagartheapp.work.gd
sudo nginx -T | grep -E "server_name|sagartheapp"
# 1. What's listening on which ports?
sudo ss -tlnp
# 2. What's inside your app folder?
ls -la ~/wanderlust
# 1. Find the frontend's built static files
ls -la ~/wanderlust/frontend
ls -la ~/wanderlust/frontend/dist 2>/dev/null
ls -la ~/wanderlust/frontend/build 2>/dev/null
# 2. What does the frontend package.json build script say?
cat ~/wanderlust/frontend/package.json | grep -A3 '"scripts"'
# 3. What's the backend entry + how does it mount routes?
cat ~/wanderlust/backend/package.json | grep -A5 '"scripts"'
ls ~/wanderlust/backend
# Find what API prefix the backend uses
ls ~/wanderlust/backend/routes
grep -rn "app.use(" ~/wanderlust/backend/server.js
# Find what base URL the frontend calls
cat ~/wanderlust/frontend/.env.local
grep -rn "baseURL\|VITE_\|API_URL\|axios.create" ~/wanderlust/frontend/src --include="*.ts" --include="*.tsx" | head -20
sudo nano /etc/nginx/sites-available/sagartheapp
chmod o+rx /home/ubuntu /home/ubuntu/wanderlust /home/ubuntu/wanderlust/frontend /home/ubuntu/wanderlust/frontend/dist
sudo ln -sf /etc/nginx/sites-available/sagartheapp /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default
sudo nginx -t
sudo systemctl reload nginx
# Frontend
curl -I http://sagartheapp.work.gd
# Expect: HTTP/1.1 200 OK
# Backend via proxy
curl http://sagartheapp.work.gd/api/posts
# Expect: JSON array of posts (or empty []) — NOT "Bad Gateway" and NOT "Connection refused"
# Auth route
curl http://sagartheapp.work.gd/api/auth
# Expect: some response from your auth router (likely 404 or a message, but not a connection error)
sudo certbot install --cert-name sagartheapp.work.gd
