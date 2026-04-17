
pwd_dir = $(pwd)

git clone https://github.com/signalapp/Signal-TLS-Proxy.git
mv nginx.conf Signal-TLS-Proxy/data/nginx-relay/
cd Signal-TLS-Proxy
bash init-certificate.sh
cd $pwd_dir
