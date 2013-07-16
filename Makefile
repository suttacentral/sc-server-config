all: provision \
	install-basics \
	install-apache-persona \
	install-git-admin \
	install-wiki \
	install-bugzilla

provision: dummy
	vagrant up

install-basics:
	ansible-playbook -i hosts 01-basics.yml

install-apache-persona:
	ansible-playbook -i hosts apache-persona/tasks/main.yml

install-git-admin:
	ansible-playbook -i hosts 03-git-admin.yml

install-wiki:
	ansible-playbook -i hosts 04-wiki.yml

install-bugzilla:
	ansible-playbook -i hosts 05-bugzilla.yml

test-provision:
	ansible -i hosts -m shell -a 'uname -a' virtualbox

dummy:
