roles:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook -i inventory.ini playbook.yml --tags prepare

redmine-deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags redmine-deploy