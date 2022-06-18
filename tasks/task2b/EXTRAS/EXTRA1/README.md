
<h1>EXTRA TASK 2</h1>

<hr>

<h2>Task 1</h2>

At first, I have again created two Virtual machines of RHEL and Debian. I have stopped, restarted deleted and then recreated them from the VM menu itself.

<h2>Task 2</h2>

The connection was successfull from my host to VM public ip address

<h2>Task 3</h2>

Then I have added new rules to ufw(firewall) by adding the public address of another vm, as sudo ufw allow from 20.211.181.90 then for another host, I have added previous host's ip the same way. Then I have pinged, response was successfull, then connected via ssh with two virtual machines.

<h2>Task 4</h2>

For last step, I have installed apache2 web server by typing: sudo apt install apache2. Then I have edited the index file which is located at /var/www/html/index by redirecting the "hello world" string there as echo "hello world" >> /var/www/html/index. 
After that I have redirected the uname -a, df -h, ps command there again in order to print OS information in index file: 
uname -a >> /var/www/html/index.html
df -h >> /var/www/html/index.html
ps >> /var/www/html/index.html

Then I have entered my public address via browser, and it showed the web page successfully.

Then I have typed the curl command for showing the content without browser as curl 20.211.181.90

<hr>
 
