<h1><b>This is a task 5 for Exadel internship</h1></b>

<hr>

<h1>TASK 1</h1>

So first of all, I have created three vms from azure, they are in same network group, and they have three private and public ip addresses
So the remote machine has ip address as:
10.0.0.4

and the target machines has ip as:
10.0.0.5
10.0.0.6

<h2>TASK 2</h1>

In order to give ping command, I have to firstly configure the hosts inside /etc/ansible/hosts file, and specify the group and ip addresses inside that group

So I have given group as:
[ansible_clients]
and below it targets ip adrresses
10.0.0.5
10.0.0.6

Then I specified the users and passwords for those ips, But firstly, I have to intsall sshpass application in order to do remote password access, so I installed is with apt install sshpass.

Then I have given the credentials as 

10.0.0.5 ansible_ssh_user=user ansible_ssh_pass=secret
10.0.0.6 ansible_ssh_user=user ansible_ssh_pass=secret

Then I gave a ping command as:

ansible -m ping 'ansible_client'

Then it gave me a pong respond because of true credentials, if the user or password is wrong, then it gives me error

<h2>TASK 3</h>

For task 3, I need a simple yml file So I created it and written some commands inside it, they are written in simple.yml file.

<hr>

Let's understand and explain what is written there:

---
- name: docker installer
  hosts: ansible_client
  remote_user: user
  become: true
  tasks:

So all the yml files starts with --- and following -name. It is case sensitive so we should be carefull with letters and spaces.

I am saying that this is docker installer yml file and the hosts are the group that I have written inside hosts file.

Then I specified the user name

And become means it has superuser access, so in this case we are running it as root, it doesnt matter wether it is root user or sudoer

<hr>

I had to install docker and make it run on two other vms, So I wrote the neccessary commands:
tasks:
    - name: install docker
      apt:
          name: docker.io
          state: latest
    - name: run docker
      service:
              name: docker
              state: started

So here, I am specifying that package installer should be apt, because it is debian based, and then make it run from systemd.

<hr>

After that I have also created a confirmer txt inside 2 machines the command for it was:

 - name: create confirmer
      copy:
           content: "Congratulations on installing docker"
           dest: /home/user/confirmed.txt

So then two machiens will have file created inside their home directory.

You can see in screenshots that Docker is running and confirmed txt is there

<hr>

Then, in order to check the synax of my file I wrote:

 ansible-playbook sample.yml --syntax-check

It showed nothing so it means no errors.

Then I typed ansible_playbook sample.yml

After that it executed it.

