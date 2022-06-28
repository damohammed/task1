<h1> <b>This is a task 4 for exadel internship </b></h1>

<h1><b>TASK1</b> </h1>

So for installing docker, in windows we can just download a docker desktop application, and install it with next-next buttons. Then we will have to reboot the system, after than when we launch the app, it will run docker daemon. then we can move to command prompt or powershell and type docker commands.

In linux it is more easy, we can just type sudo apt update && sudo apt install docker.io

<h1>Extra</h1>
so bash script for installing docker in debian is as follows:


sudo apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common;
#here I am installing all neccesarry tools for performing this task

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -;
#here I am downloading docker's community edition repository for debian

sudo apt-key fingerprint 0EBFCD88;
#here I am adding the fingerprint of this repo, otherwise it will show error becauser of public key non existence

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable";
#here I am specifying that it is speciaaly for deb distribution with amd64(x86_64) architecture, stable version

sudo apt-get update;
#here I am updating the repo

sudo apt-get install docker-ce
#here I am giving a command to install docker community eddition

<h1><b>TASK 2</b></h1>

So, for downloading and running docker container hello world, there is such image in official docker hub.
First we should make sure that docker daemon is running then we can run:

docker run -it hello-world

After this, it will download and run hello-world container's output.

If we want to just pull it and not run we can write:

docker pull hello-world

<h1><b>TASK 3</b></h1>
As you know, we can create simple docker images which has pre installed services by our own wih docker files. So in our example, I have written some few commands to install them:

It begins with choosing the ubuntu distro

Then I am specifying the maintainer by giving it my own email

Then I have given bash scripts for updating and upgrading the repo

Then I have given a command to install nginx, apache2 and httpd services.

Then I am exposing the port 80, which is the port of http

The last lines of codes are the ones which actually starts the nginx or apache2.

After that, I typed a command as:

Docker build ./

Then it created a new image with new id

Then I have typed docker's ip address on browser, then it showed me the welcome page of nginx.
