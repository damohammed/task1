
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

Then I added a public ip addrress to ubuntuvm but no ip for centos (because it should not have access to internet).

then I typed a command to create them as:
terraform apply -auto-approve

<hr>

