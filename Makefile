all: provision install-basics install-apache-persona install-git-admin

dummy:

provision: dummy
	vagrant up

test-provision:
	ansible -i hosts -m shell -a 'uname -a' virtualbox

install-basics:
	ansible-playbook -i hosts basics/tasks/main.yml

install-apache-persona:
	ansible-playbook -i hosts apache-persona/tasks/main.yml

install-git-admin:
	ansible-playbook -i hosts git-admin/tasks/main.yml
