### Hexlet tests and linter status:
[![Actions Status](https://github.com/kotovann/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/kotovann/devops-for-developers-project-76/actions)

Приложение доступно по адресу:
[тутати.рф](https://тутати.рф/)

### Требования
- make
- Ansible

---
1. В файле `inventory.ini` укажите IP-адреса ваших серверов
2. Установите роли
```bash
make roles
```

3. Подготовьте серверы
```bash
make prepare
```

4. Создайте файл `vault_pswd` с паролем для Ansible Vault
5. Укажите данные вашей БД в `group_vars/webservers/vault.yml` 
``` yml
v_db_host: "IP сервера БД"
v_db_username: "имя пользователя"
v_db_password: "пароль"
v_db_name: "имя базы данных"
```
и зашифруйте их
```bash
make vault-encrypt
```
Если понадобится редактирование зашифрованного файла, используйте
```bash
make vault-edit
```
6. Выполните деплой
```bash
make deploy
```
7. Добавьте ключ DataDog API в vault
```bash
make vault-edit
```
```yml
v_datadog_api_key: "ваш_api_ключ"
```
8. Запустите мониторинг
```bash
make monitoring
```