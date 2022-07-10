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

<h1><b>ELK</b></h1>

<h1>TASK 1</h1>

ELK (Elasticsearch, Logstash and Kibana needs very huge amount of RAM and CPU, because they depend on each other and works in real time, So I installed a new VM with 8Gigs and though It consumed aounrd 7Gigs.

I used docker compose for installing them, then I enabled the ports of all elk like 9200, 5044 and 5601

<h1>TASK 2</h1>

In order to get logs from docker I used the special dpkg application that integrartes with docker and shows all dockers statistics, I have also uncommented some settings inside docker settings, all of them are written in commands txt file

<h1>TASK 3</h1>

I have custimezed the dashboard which shows the web traffic, it can show all the datasa usage, up and down speed, used by which os and etc
 
<h1>TASK 5</h1>

By default, monitoring section in elk is disabled, so I enabled it and it showed all my cpu, ram, containers statistics

 
<h1>TASK 6</h1>

So I have learnt a lot of features of ELK such as:

Monitoring

Management

Scalability

Real-time results

<hr>

<h1><b>Grafana</b></h1>

<h1>TASK 1</h1>
 
I installed Grafana with docker by port 3000 with docker run command in detatched mode

<h1>TASK 2</h1>
 
When I tapped on configuration, it asked me where to integrate, I tapped on elasticsearch and written url of it with port:9200 then I also written credentials and user with password

<h1>TASK 3</h1>
 
I installed the dashboard which shows the datas & sources of ELK from dashboards section

<h1>TASK 4</h1>

Grafana monitoring tool has also a lot of features like:

Flexible visualization

Simple UI

Easy to understand

Different statistic types

<hr>

