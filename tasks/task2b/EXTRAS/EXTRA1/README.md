
<h1>EXTRA TASK 2</h1>

<hr>

<h2>PART 1</h2>

<h3>Task 1</h3>

At first, I have again created two Virtual machines of Ubuntu.

If you can see on step1 and step2 pictures, It shows the public ip and private ips of their internal networks, as 10.0.0.5 and 10.0.0.6

<h3>Task 2</h3>

Then I have added the firewall rules as allow from ip_address

<h3>Task 3</h3>

The connection was successfull from VM1 to VM2 internall address

The ip of vm1 is 20.213.164.219/10.0.0.5

The ip of vm2 is 20.211.177.175/10.0.0.6

I have tried the ping command from 20.213.164.219 to 10.0.0.6
then I have done it reverse

<hr>
 
<h2> PART 2 </h2>
1. First I should create a script file

command:

<b> touch script.sh</b>

2. Then I can just echo out a string which will install and redirect texts to script file:

command:

<b>echo "sudo apt install nginx apache -y && echo "Hello world">> /var/www/html/index.html && echo "uname -a" >> script.sh" >> script.sh</b>
