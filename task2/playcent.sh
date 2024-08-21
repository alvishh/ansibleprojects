#!bin/bash
ansible -i inventory -m yum -a "name-httpd state=present" centremote --become

git clone https://github.com/srtimsina/devops-techaxis.git

ansiblei -i inventory -m copy -a "src=/home/vagrant/devops-techaxis/index.html dest=/var/www/html/" web1 --become
ansible -i inventory -m copy -a "src=/home/vagrant/devops-techaxis/devops.jpg dest=/var/www/html/" web1 --become 
