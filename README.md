### Hexlet tests and linter status:
[![Actions Status](https://github.com/kotovann/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/kotovann/devops-for-developers-project-76/actions)

Приложение доступно по адресу:
[тутати.рф](https://тутати.рф/)

### Требования
  	make
  	Ansible

---
1. В файле `inventory.ini` укажите IP-адресса ваших серверов
2. Установите роли `make roles`
3. Подготовьте сервера `make prepare`
4. Создайте файл `.env.j2` на основе `.env.example`
5. Выполните деплой Redmine `make redmine-deploy`