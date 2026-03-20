roles:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook -i inventory.ini playbook.yml --tags prepare

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags redmine-deploy --vault-password-file vault_pswd

monitoring:
	ansible-playbook -i inventory.ini playbook.yml --tags monitoring --vault-password-file vault_pswd

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file vault_pswd

vault-encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml --vault-password-file vault_pswd