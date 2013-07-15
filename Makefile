all: provision install-basics install-apache-persona install-git-admin \
	install-wiki install-bugzilla

provision: dummy
	vagrant up

install-basics:
	ansible-playbook -i hosts basics/tasks/main.yml

install-apache-persona:
	ansible-playbook -i hosts apache-persona/tasks/main.yml

install-git-admin:
	ansible-playbook -i hosts git-admin/tasks/main.yml

install-wiki:
	ansible-playbook -i hosts wiki.yml

install-bugzilla:
	ansible-playbook -i hosts bugzilla.yml

test-provision:
	ansible -i hosts -m shell -a 'uname -a' virtualbox

dummy:
