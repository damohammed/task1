
<h1>EXTRA TASK 2</h1>

<hr>

<h2>PART 1</h2>

<h3>Task 1</h3>

At first, I have again created two Virtual machines of Ubuntu.

Then I have created a new virtual network

For first vm, I used the default vpc, and for second I am using the new one I have created

<h3>Task 2</h3>

Then I allowed peering permissions from virtual network's settings from default to new one

<h3>Task 3</h3>

The connection was successfull from VM1 to VM2 internall address, default virtual network

The ip of vm1 is 20.70.194.54/30.0.2.4

The ip of vm2 is 20.213.164.219/10.0.0.5

I have tried the ping command from 30.0.2.4 to 10.0.0.5
then I have done it reverse

<hr>
 
<h2> PART 2 </h2>
1. First I should create a script file

command:

<b> touch script.sh</b>

2. Then I can just echo out a string which will install and redirect texts to script file:

command:

<b>echo "sudo apt install nginx apache -y && echo "Hello world">> /var/www/html/index.html && echo "uname -a" >> script.sh" >> script.sh</b>
