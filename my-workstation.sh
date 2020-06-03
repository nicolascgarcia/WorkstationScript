## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Atualizando o repositório ##

sudo apt update &&

## Entrando em Downloads ##

cd /home/$USER/Downloads/ &&

## baixando e instalando Chrome ##

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&

sudo apt install ./google-chrome-stable_current_amd64.deb &&

## baixando e instalando FileZilla ##

sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list' &&

wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add - &&

sudo apt-get update &&

sudo apt-get install filezilla &&

## Instalando Postman ##

sudo apt-get install snapd snapd-xdg-open &&

snap install postman &&

## Instalando Skype ##

echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skype-stable.list &&

wget https://repo.skype.com/data/SKYPE-GPG-KEY &&

sudo apt-key add SKYPE-GPG-KEY &&

sudo apt install apt-transport-https &&

sudo apt update &&

sudo apt install skypeforlinux &&

## Instalando Visual Code ##

sudo snap install --classic vscode &&

## Instalando Git ##

sudo apt install git &&

## Instalando Node.JS ##

sudo apt update &&

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - &&

sudo apt-get install -y nodejs &&

## Instalando Apache ##

sudo apt update &&

sudo apt install apache2 &&

sudo ufw app list &&

sudo ufw app info "Apache Full" &&

sudo ufw allow in "Apache Full" &&

## Instalando MySQL ##

sudo apt update &&

sudo apt install mysql-server &&

sudo mysql_secure_installation &&

## Instalando PHP ##

sudo apt update &&

sudo apt install php php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath &&

## finalizando o processo ##

sudo apt update && sudo apt dist-upgrade &&
sudo apt autoclean &&
sudo apt autoremove -y 

echo "Fim!"


