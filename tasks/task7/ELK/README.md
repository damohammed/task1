<h1><b>ELK</b></h1>

<h1>TASK 1</h1>

ELK (Elasticsearch, Logstash and Kibana needs very huge amount of RAM and CPU, because they depend on each other and works in real time, So I installed a new VM with 8Gigs and though It consumed aounrd 7Gigs.

I used docker compose for installing them, then I enabled the ports of all elk like 9200, 5044 and 5601

<h1>TASK 2</h1>

In order to get logs from docker I created docker compose file, which installs kibana and elasticsearch and filebeat containers, then I also created filebeat.yml, which compose file fetches from it, and filebeat.yml file fetches from my dockers log.

then I runned the command; docker-compose up -d (detatched mode)

Then it ran 3 containers, I entered there on my browser, then I tapped on index pattern, create new index pattern, then I searched filebeat and it found a match, then I gave it name and created it

After that, I tapped on discover section, and tapped the filter the one I created, then it displayed all docker logs

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
