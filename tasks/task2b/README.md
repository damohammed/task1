<img src="https://www.zdnet.com/a/img/2018/04/24/c79e9dfb-b4a9-46bb-b831-f2c57fdf8a1d/cloud-storage.jpg" alt="cloud">
<h1><b> This is a task 2 mandatory readme for exadel internship </b></h1>

<hr>

<h3><b>TASK 1 </b></h3>

For task 1, I have created the free acount with my existing microsoft account, and I got free subscription for 12 month, There were two option of creating the account. The pay as you go (charges) and free one. 

<h3><b>TASK 2 </b></h3>

After I got my billing, I explored that, Azure provided me 200$ for 30 days as free, I can use any chargable service for this amount and I can use free services as well. But 200$ amount expires after 30 days of usage, then Ican only use the free services for free. Most of free services are provided for 750 hours (12 months) 

<h3><b>TASK 3 </b></h3>

Azure calls EC2 as Virtual machine, So at first I have created Debian 11(Bulls eye) vm and then Ubuntu LTS 20. They were easy to create, we can choose the region, sizes, memory, cpu and the price differs by the options. I have stopped, started, restarted and then recreated them from the VM menu

<h3><b>TASK 4 </b></h3>

The ssh connection from my host to VM was successfull, The IP was public static ip provided by service.

<h3><b>TASK 5 </b></h3>

I have allowed the ping and ssh for two of my virtual machines with ufw service, by typing sudo ufw allow openssh and then sudo ufw allow <b>"public_ip"</b>. I have pinged and then connected via ssh successfully to from two vms to each other. I have configured both password and ssh key for ssh connections 

<h3><b>TASK 6 </b></h3>
For installing a web server, I typed sudo apt install nginx/apache2. My web server was accessible from my browser. Then I have changed the index file in /var/www/html/index.html and eched there "Hello world". then I have echoed neofetch or uname -a to index file for OS information, df -h for free storage and memory. And finally ps aux for running processes I have redirected the output to index file.
For last step I have typed curl 20.5.114.165(my public adress) and it printed it.
<hr>
