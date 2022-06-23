<h1><b>Extra tasks for Task 3 Exadel internship</b></h1>

<hr>

<h3><b>Task 1</b><h3>

So I have created again new vm image with ubuntu and centos on azure

<h3><b>Task 2</b><h3>

I have written network security group settings for allowing 80, 22 and 443 ports for two virtual machines:

1 - Ubuntu which has public ip address

2 - Centos which has no public ip address but private address only(10.0.0.6)

<h3><b>Task 3</b></h3>

So for installing nginx on centos, first of all I have sshed to my ubuntu machine and then I have downloaded nginx installer from source by wget command.

Then I have copied securly the installer from ubuntu to centos machine with scp command.

On centos then I have extracted the gz file then typed ./configure, make, make install

But when I typed yum install nginx, it refused, because it has no internet access.

After that, I have installed and enabled httpd from local repository, created index file and then typed hello world there

Finally, I have curled from centos itself first as curl localhost, then from ubuntu machine as curl 10.0.0.6

<hr>
