# README.md

## Chrome

```bash
sudo apt-get install libxss1 libappindicator1 libindicator7 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo apt-get install -f
rm google-chrome-stable_current_amd64.deb
```

## MySQL

### 基本操作

```bash
# 登入mysql
mysql -u root -p

# 建立帳號
GRANT ALL PRIVILEGES ON *.* TO 'username'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;

# 重啟權限
FLUSH PRIVILEGES;
```

### 設定允許遠端存取

```bash
# 將bind-adress = 127.0.0.1註解掉
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf

# 重啟mysql
sudo service mysql restart
```

## Apache

### 隱藏系統資訊

**sudo vim /etc/apache2/apache2.conf**

加在最下面

```bash
ServerTokens Prod
ServerSignature Off
```

## phpMyAdmin

### 切換phpmyadmin預設URL
```bash
sudo vim /etc/phpmyadmin/apache.conf

# 找到'Alias /phpmyadmin /usr/share/phpmyadmin'然後修改
Alias /foo /usr/share/phpmyadmin

# 重啟apache
sudo service apache2 restart
```

### 修改Timeout
```bash
# 搜尋php.ini, 將session.gc_maxlifetime改成86400
sudo grep -ril 'session.gc_maxlifetime' /etc/

# 修改phpmyadmin的config.ini.php, 最後一行加入$cfg['LoginCookieValidity'] = 86400;
sudo vim /etc/phpmyadmin/config.inc.php
```

## Laravel Project相關權限設定

```bash
# 開啟權限(沒設定會出現HTTP 500 Error)
sudo chmod 755 -R laravel-project
sudo chmod -R o+w laravel-project/storage
```

## Let's Encrypt

```bash
# 更新憑證
sudo letsencrypt renew
```


### 更新憑證Job(一週更新一次)

```bash
sudo crontab -e
```

```bash
0 0 * * 1 /usr/bin/letsencrypt renew >> /var/log/le-renew.log
```

```bah
sudo service cron start
```