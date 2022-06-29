<h1> <b>This is a task 4 for exadel internship </b></h1>

<h1><b>TASK1</b> </h1>

So for installing docker, in windows we can just download a docker desktop application, and install it with next-next buttons. Then we will have to reboot the system, after than when we launch the app, it will run docker daemon. then we can move to command prompt or powershell and type docker commands.

In linux it is more easy, we can just type sudo apt update && sudo apt install docker.io

<h1>Extra</h1>
so bash script for installing docker in debian is as follows:


sudo apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common;
#here I am installing all neccesarry tools for performing this task

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
#here I am downloading docker's community edition repository for ubuntu

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
#here I am specifying that it is speciaaly for deb distribution with amd64(x86_64) architecture, stable version

sudo apt-get update;
#here I am updating the repo

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
#here I am giving a command to install docker community eddition, cli container and composer

<h1><b>TASK 2</b></h1>

So, for downloading and running docker container hello world, there is such image in official docker hub.
First we should make sure that docker daemon is running then we can run:

docker run -it hello-world

After this, it will download and run hello-world container's output.

If we want to just pull it and not run we can write:

docker pull hello-world

<h1><b>TASK 3.1</b></h1>
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

<h1><b>TASK 3.2</b></h1>

I have created a docker-compose file in order to create a new variable DEVOPS with my username

So there I am specifying my image with tag, that I have built previously, and then I am giving it a new environment DEVOPS=mukhammadamin9801

Then I ran docker-compose up, it created env.

Then I typed:
<b>docker exec <container_id> bash -c 'echo "$DEVOPS"'</b>

output:

<b>mukhammadamin9801</b>


<h1><b>TASK 4</b></h1>

For this, firstly I have created a new docker hub account.

Then I have commited my docker container id with new image id name with tag

Then I have loged in from my local docker

After that I have specified the location of where to push with docker tag option

Then finally I have pushed it by docker push Dockerid/repo

Here is the link for my docker image:

https://hub.docker.com/layers/243830675/mukhammad9801/mydockerrepo1/latest/images/sha256-3acb3261c75dc4e8435018cfa6223fad680f846312426c2245dc4c4a1169c6b1?context=repo

<h1><b>TASK 5</b></h1>

For this task, I am firstly mentioning the version in docker-compose file, otherwise it won't work

Then every image starts from services: point, so thats why there are three services.

<b>I added the function scale:5 for making 5 nodes</b>

At first, I am mentioning it as os then my docker image repo name from dockerhub.

Then for second service, I am requiring to run openjdk:7 (java) image, then I am mentioning my java file path and then the command to run it.

The final image is for database, I am going with postgresql, so I have mentionet it's image name and gave it password

Then I ran the command docker-compose up

<b>Then the output is:<b>

docker-compose up
    
Starting tttt_java_1 ... done
Creating tttt_os_1   ... done
Creating tttt_db_1   ... done
Attaching to tttt_db_1, tttt_os_1, tttt_java_1
db_1    | The files belonging to this database system will be owned by user "postgres".
db_1    | This user must also own the server process.
db_1    | 
db_1    | The database cluster will be initialized with locale "en_US.utf8".
db_1    | The default database encoding has accordingly been set to "UTF8".
db_1    | The default text search configuration will be set to "english".
db_1    | 
db_1    | Data page checksums are disabled.
db_1    | 
db_1    | fixing permissions on existing directory /var/lib/postgresql/data ... ok
db_1    | creating subdirectories ... ok
db_1    | selecting dynamic shared memory implementation ... posix
db_1    | selecting default max_connections ... 100
db_1    | selecting default shared_buffers ... 128MB
db_1    | selecting default time zone ... Etc/UTC
db_1    | creating configuration files ... ok
db_1    | running bootstrap script ... ok
db_1    | performing post-bootstrap initialization ... ok
db_1    | syncing data to disk ... ok
db_1    | 
db_1    | initdb: warning: enabling "trust" authentication for local connections
db_1    | You can change this by editing pg_hba.conf or using the option -A, or
db_1    | --auth-local and --auth-host, the next time you run initdb.
db_1    | 
db_1    | Success. You can now start the database server using:
db_1    | 
db_1    |     pg_ctl -D /var/lib/postgresql/data -l logfile start
db_1    | 
db_1    | waiting for server to start....2022-06-28 22:15:43.155 UTC [48] LOG:  starting PostgreSQL 14.4 (Debian 14.4-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
db_1    | 2022-06-28 22:15:43.186 UTC [48] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
db_1    | 2022-06-28 22:15:43.291 UTC [49] LOG:  database system was shut down at 2022-06-28 22:15:40 UTC
db_1    | 2022-06-28 22:15:43.342 UTC [48] LOG:  database system is ready to accept connections
db_1    |  done
db_1    | server started
db_1    | 
db_1    | /usr/local/bin/docker-entrypoint.sh: ignoring /docker-entrypoint-initdb.d/*
db_1    | 
db_1    | 2022-06-28 22:15:44.171 UTC [48] LOG:  received fast shutdown request
db_1    | waiting for server to shut down....2022-06-28 22:15:44.197 UTC [48] LOG:  aborting any active transactions
db_1    | 2022-06-28 22:15:44.209 UTC [48] LOG:  background worker "logical replication launcher" (PID 55) exited with exit code 1
db_1    | 2022-06-28 22:15:44.210 UTC [50] LOG:  shutting down
db_1    | 2022-06-28 22:15:44.449 UTC [48] LOG:  database system is shut down
db_1    |  done
db_1    | server stopped
db_1    | 
db_1    | PostgreSQL init process complete; ready for start up.
db_1    | 
db_1    | 2022-06-28 22:15:44.659 UTC [1] LOG:  starting PostgreSQL 14.4 (Debian 14.4-1.pgdg110+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 10.2.1-6) 10.2.1 20210110, 64-bit
db_1    | 2022-06-28 22:15:44.661 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
db_1    | 2022-06-28 22:15:44.662 UTC [1] LOG:  listening on IPv6 address "::", port 5432
db_1    | 2022-06-28 22:15:44.709 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
db_1    | 2022-06-28 22:15:44.769 UTC [60] LOG:  database system was shut down at 2022-06-28 22:15:44 UTC
db_1    | 2022-06-28 22:15:44.837 UTC [1] LOG:  database system is ready to accept connections
tttt_java_1 exited with code 0


Then I typed docker ps and output was:

CONTAINER ID   IMAGE                                COMMAND                  CREATED          STATUS          PORTS                NAMES
id    postgres                             "docker-entrypoint.s…"   4 minutes ago    Up 4 minutes    5432/tcp             tttt_db_1
id1   mukhammad9801/mydockerrepo1:latest   "nginx -g 'daemon of…"   4 minutes ago    Up 4 minutes    80/tcp               tttt_os_1

