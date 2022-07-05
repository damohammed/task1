<h1><b>Extra tasks 5 for exadel internship</h1></b>

<hr>

<h1>TASK 1</h1>

For task 1 I have already installed docker, so not intsalled again.

Then I have written yml files in order to install linux distro, nginx web server, mysql-server and php language(LEMP) as containers in docker

nginx and mysql requires ports in order to run. So I have give my local port 8080 to run in port 80 of nginx

and port 9090 to run in port 3306 which is mysql default port

<hr>

<h1>TASK 2</h1>

I have not given any credentials, because I used ssh keys.

<hr>

<h1>TASK 3</h1>

For task 3, I have created httpd yaml files by typing ansible-galaxy init httpd --offline

Then I have mentioned tasks/main.yml file which installs httpd and copies the index.html file from the host to target

Then, inside var/main.yml I have mentioned the destionation of where to copy the index file

Then inside files/main.yml file, I have created the index.html file which is the copying file

<hr>
