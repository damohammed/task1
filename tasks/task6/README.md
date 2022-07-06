<h1><b>This is a task 6 for Exadel internship</h1></b>

<hr>

<h1>TASK 1</h1>

So for task 1, I created new vm, and installed docker, then I created Dockerfile which installs jenkins:

FROM jenkins/jenkins
 
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER jenkins

<h1>TASK 2</h1>

By default jenkins asks to install neccessary plugins, so I installed them, and then I needed Docker and Docker plugin plugins for further tasks, so I installed them as well

<h1>TASK 3</h1>

For This task, I have created Jenkins files with pipeline, which will install node alpine, and then checks it's version.

Then It installs maven from another image, and then checks out mvn version with node version.

<h1>TASK 4</h1>

Then I created freestyle project, and then in build section, I chose shell scipt, and wrote:

date

After that, when I builded it, it printet the exact date.

<h1>TASK 5</h1>

For executing docker ps, I used pipeline, and then specified agents, then I typed sh command with docker ps -a

so then it printed all the running containers inside my jenkins master host

<h1>TASK 6</h1>

For this, I have created two files, one is Dockerfile which installs ubuntu, updates repository, installs nginx and then checks it, And it was Dockerfile from previous task

Then I created jenkins file which will fetch all from Dockerfile. 

Both files are in my repository.

<h1>TASK 7</h1>

I have created new credentials inside Manage jenkins > Credentials > new credential.

Then, When I was creating new pipeline, I tapped on Pipeline Syntax, Then I chose witchCredentials: Bind credentials to variables step

Then I added Secret text

Inside It I typed Secret text and saved

So then in pipeline, in sh I typed:

echo "$variable"

<hr>

