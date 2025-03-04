cd /opt/mailcow-dockerized/data/conf/sogo/
sudo rm custom-theme.css
sudo wget https://raw.githubusercontent.com/RobertMochnacky/sogo-themes/main/dark-blue/custom-theme.css
sudo docker compose restart memcached-mailcow sogo-mailcow
cd /opt/mailcow-dockerized/ && sudo docker compose up -d
