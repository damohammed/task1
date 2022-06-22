
<h1>Task 3 task for exadel internship</h1>

<hr>

<h2><b>TASK 1</b></h2>

First, I have installed terraform on my devices from official website.

Then I have created the folder for terraform tasks.

After that I have created the main.tf file and inserted neccessary commands there.

I have typed a command as terraform init, in order to make terraform commands work.

Then I have logged in from terminal by giving my azure account subscription ID, command:
az account set -s "subscription_id"

Then I have added new lines in main.tf script for providing resource of azurerm

Then I typed terraform validate in order to check wether it is valid.

After it, I typed the command terraform plan in order to perform the actions

After that I have firstly created a virtual network, and all settings inside it.

Then I have created ubuntu vm with standard_b1s size with created vpc. Then I created centos with same configurations

<h2><b>TASK 2</b></h2>

Then I added a public ip addrress to ubuntuvm but no ip for centos (because it should not have access to internet).

then I typed a command to create them as:
terraform apply -auto-approve.

In main.tf file, I have given all the necessary ports like 22, 80 and 443 so both vms has access to these ports. 

File for ubuntu vm is azureconf.tf

<h2><b>TASK 3</b></h2>

But centos vm will not have public internet access, yet it has access to ssh, http and https protocols.
and file for centos is centconf.tf

<h2><b>TASK 4</b></h2>

In order to install nginx web server on ubuntu, I have written a bash script file with written scripts of installing nginx then echoing out the hello world string with OS information in html format which will redirect the text to index file, then index file is moved to /var/www/html/ path.

The link is:
http://20.222.255.95/

<h2><b>TASK 5</b></h2>
I have installed Docker by the same script which installed nginx and it is from official repository.

<hr>

