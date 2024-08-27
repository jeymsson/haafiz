Para conectar o container com um banco local deve seguir os seguintes passos:

1. 
1.1 - Alterar o arquivo cnf do mysql para aceitar conexões de outros hosts

Em 
/etc/mysql/mysql.conf.d/mysqld.cnf
altere a linha bind-address de [mysqld] para 0.0.0.0

```cnf
[mysqld]
bind-address            = 0.0.0.0
```

1.2 - Reinicie o serviço do mysql

```bash
sudo service mysql restart
```

1.3 - Crie um usuário no mysql para aceitar conexões de qualquer host

```sql
CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root
```

1.4 - Reinicie o serviço do mysql

```bash
sudo service mysql restart
```

1.5 - Verifique se o mysql está aceitando conexões de qualquer host (dentro do container).

```bash
mysql -u root -h
```

1.6 - Se tudo estiver correto, você deve conseguir conectar no mysql

```sh {"id":"01J6A21CZKRCGA91PNMWH7WNVC"}

```