#!/bin/bash
mysql -h $(read -p "host:" db_host && echo $db_host) -u $(read -p "user:" db_user && echo $db_user) -p$(read -sp "password:" db_password && echo $db_password) -c $(read -p "db:" db && [[ -n $db ]] && echo $db || echo mysql)
exit 0