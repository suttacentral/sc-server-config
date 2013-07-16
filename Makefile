all: provision \
	install-basics \
	install-apache-persona \
	install-git-admin \
	install-wiki \
	install-bugzilla \
	install-newrelic

provision: dummy
	vagrant up

install-basics:
	ansible-playbook -i hosts 01-basics.yml

install-apache-persona:
	ansible-playbook -i hosts 02-apache-persona.yml

install-git-admin:
	ansible-playbook -i hosts 03-git-admin.yml

install-wiki:
	ansible-playbook -i hosts 04-wiki.yml

install-bugzilla:
	ansible-playbook -i hosts 05-bugzilla.yml

install-newrelic:
	ansible-playbook -i hosts 06-newrelic.yml

test-provision:
	ansible -i hosts -m shell -a 'uname -a' virtualbox

dummy:
