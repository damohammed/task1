#!/bin/bash

sudo apt -y install httpd && sudo systemctl start httpd;
echo '<!DOCTYPE html>' > index.nginx-debian.html;
echo '<html>' >> index.nginx-debian.html;
echo '<head>' >> index.nginx-debian.html;
echo '<title>Welcome to nginx!</title>' >> index.nginx-debian.html;
echo '</head>' >> index.nginx-debian.html;
echo '<body>' >> index.nginx-debian.html;
echo '<h1><center>Hello World</center></h1>' > index.nginx-debian.html;
echo '<h1><center>OS Linux Ubuntu 16LTS</center></h1>' >> index.nginx-debian.html;
echo '</body>' >> index.nginx-debian.html;
echo '</html>' >> index.nginx-debian.html;
sudo mv index.html /var/www/html/;
sudo apt -y install docker.io
