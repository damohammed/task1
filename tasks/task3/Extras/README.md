<h1><b>Extra tasks for Task 3 Exadel internship</b></h1>

<hr>

<h3><b>Task 1</b><h3>

So I have created again new vm image with ubuntu and centos on azure,

but this time, I did not created it with hardcode, but with variables.

Firstly I created variables.tf file, then I used them in os installer tf file.


I have added source image as variable inside in ubuntu.tf and centosconf.tf file

I have made sure that centos has no access to internet by pinging on google.com
<h3><b>Task 2</b><h3>

I have written network security group settings for allowing 80, 22 and 443 ports for two virtual machines inside main.rf file:

1 - Ubuntu which has public ip address

2 - Centos which has no public ip address but private address only(10.0.0.6)

<h3><b>Task 3</b></h3>

For installing nginx on centos, I have written the neccessary bash script commands inside centos tf file, wchich will execute it, then it will enable nginx service, then it will echo hello world to index file.

Finally, I have curled from centos itself first as curl localhost, then from ubuntu machine as curl 10.0.0.6

<hr>
