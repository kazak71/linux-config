#!/bin/bash
 
DB_BACKUP="/home/prsystem/backup/`date +%Y-%m-%d`"
DB_USER="root"
DB_PASSWD="Alfa123#"
 
mkdir -p $DB_BACKUP
 
find /home/prsystem/backup/ -maxdepth 1 -type d -mtime +5 -exec rm -rf {} \;
 
cd $DB_BACKUP

for db in prsystem
do
	mysqldump --user=$DB_USER --password=$DB_PASSWD --events --opt -R $db > "$db-$(date +%Y-%m-%d).sql";
	zip $db-$(date +%Y-%m-%d).sql.zip $db-$(date +%Y-%m-%d).sql
	rm $db-$(date +%Y-%m-%d).sql
done

cd /home/prsystem/html
for code in prsystem
do
	zip -qr "$code-$(date +%Y-%m-%d).zip" $code
	mv "$code-$(date +%Y-%m-%d).zip" "$DB_BACKUP/$code-$(date +%Y-%m-%d).zip"
done
#chown -R webadmin:webadmin $DB_BACKUP
