## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Atualizando o repositório ##

## sudo apt update && ##

## baixando e instalando Chrome ##

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&

sudo apt install ./google-chrome-stable_current_amd64.deb && 

## baixando e instalando FileZilla ##

sudo apt-get install filezilla &&

## Instalando Postman ##

sudo apt-get install snapd snapd-xdg-open &&

snap install postman &&

## Instalando Visual Code ##

sudo snap install --classic code &&

## Instalando Git ##

sudo apt install git &&

## Instalando Node.JS ##

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - &&

sudo apt-get install -y nodejs &&

## Instalando Apache ##

sudo apt install apache2 &&

sudo ufw app list &&

sudo ufw app info "Apache Full" &&

sudo ufw allow in "Apache Full" &&

## Instalando MySQL ##

sudo apt install mysql-server &&

sudo mysql_secure_installation &&

## Instalando PHP ##

sudo apt install php php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath &&

## finalizando o processo ##

sudo apt dist-upgrade &&
sudo apt autoclean &&
sudo apt autoremove -y 

echo "Fim!"



