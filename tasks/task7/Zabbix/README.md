<h1><b>This is a task 7 for Exadel internship</h1></b>

<hr>

<h1><b>Zabbix</b></h1>

<h1>TASK 1</h1>

I installed zabbix monitoring tool on my own hosts virtual machine

<h1>TASK 2</h1>

I connected my vm's host (Debian) to windows host

<h1>TASK 2.1</h1>

I installed zabbix with docker containers, they are:

 mysql
 zabbix/zabbix-server-mysql
 zabbix/zabbix-web-nginx-mysql
 zabbix/zabbix-java-gateway
 zabbix/zabbix-agent

After that I configured the port and user with password with root for mysql server,

Then I made java-gateway always run in detatched mode

Then I made configuration for zabbixes database configurations as db user password and port 10051

Afte that I made it for zabbixes nginx-web server and exposed host's 80 port to 8080 of container

Then finally I linked zabbix agent with zabbix server and make with port 10050
<h1>TASK 3</h1>

So I created my own dashboards which shows the host's time clock, cpu usage, and action logs

<h1>TASK 4</h1>

There is a special command to see the active logs from command line as:

docker exec -itu 0 <container_name> ps ax | grep agent

I have uploaded the command and results to this repo.

I can also see the active and passive loads from cpu user time widget, as you can see there, the lines which are going up are passive checks and the ones that are in straight line are active checks

<h1>TASK 5</h1>

For making ICMP ping, i have created new host, with google host name, with google dns, then I made it in ICMP ping template, after that, inside lates data, I tapped on Google, then I tapped on Googel icmp ping, as you can see in a diagram, it is starting and getting changes

<h1>TASK 6</h1>

For creating a maintenance instruction, I firstly tapped on Configuration>Maintenance and then create new one

Then I setted the period time, since when till when and host group with hostname

<h1>TASK 7</h1>

For creating dashboard of monitoring hosts, at first I have created discovery rules, Then I chose what type of templates to check, 255 range of ip.

Then inside Dashboard section, I added new widget of Discovery rules and I chose the one I named (local_network)

<hr>

