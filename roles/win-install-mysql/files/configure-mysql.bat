ECHO OFF

C:\Server\MySQL57\bin\mysql.exe -uroot --skip-password -e "DROP DATABASE IF EXISTS opencart_db" --connect-expired-password

C:\Server\MySQL57\bin\mysql.exe -uroot --skip-password -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'Onstak@123'; FLUSH PRIVILEGES;" --connect-expired-password

C:\Server\MySQL57\bin\mysql.exe -uroot --skip-password -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%'; FLUSH PRIVILEGES;" --connect-expired-password

C:\Server\MySQL57\bin\mysql.exe -uadmin -p"Onstak@123" -e "CREATE DATABASE opencart_db" --connect-expired-password

C:\Server\MySQL57\bin\mysql.exe -uadmin -p"Onstak@123" -D opencart_db < C:\Temp\database.sql --connect-expired-password
