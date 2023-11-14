sudo apt-get update 
sudo apt install apache2 -y
sudo apt-get update
git clone git@github.com:mounikainfo/2048.git
cp -R 2048/* /var/www/html
sudo systemctl start apache2 
sudo systemctl enable apache2