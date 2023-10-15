#!/bin/bash

user=$(head -5 /etc/mysql/debian.cnf | grep user | cut -d " " -f 7)
password=$(head -5 /etc/mysql/debian.cnf | grep password | cut -d " " -f 3)
mysql -u"${user}" -p"${password}" -Dsecurityonion_db -e "SELECT COUNT(*) FROM event WHERE status=0"
