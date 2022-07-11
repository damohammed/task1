<h1><b>Grafana</b></h1>

<hr>

 <h1>TASK 1</h1>

 I installed Grafana with docker compose which also installs loki, prometheus

 <h1>TASK 2</h1>

When I tapped on configuration, it asked me where to integrate, I tapped on elasticsearch and written url of it with port:9200 then I also writtnen credentials and user with password

I also integrated it with prometeus (9090) and loki (3100)

 <h1>TASK 3</h1>

 I installed the dashboard which shows the request duration seconds, I have written a querry for that as:
sum(rate(tns_request_duration_seconds_count[5m])) by(route)

Then inside legend field, I changed it to {{route}}

I also changed the name to traffic with bar chart

 <h1>TASK 4</h1>

 Grafana monitoring tool has also a lot of features like:

 Flexible visualization

 Simple UI

 Easy to understand

 Different statistic types

<hr>
