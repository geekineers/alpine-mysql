USE mysql;
UPDATE user SET Password=PASSWORD("root") WHERE User='root';
FLUSH PRIVILEGES;
EXIT;
