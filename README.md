# Debian based LAMP server with WordPress

## 1. LAMP server
- Run the lamp-wp.sh script file!
- Be careful when making the necessary settings in the pop-up configuration windows!
- If the script runs successfully, you will get a LAMP server with a pre-installed WordPress.

## 2. Database and User
- Before using WordPress, create a SQL database and a user connected to it! Use PHPMyAdmin for this!

## 3. Webmin
- To maintain and monitor your server, install the Webmin system administration application as follows:

```
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
sh setup-repos.sh
apt-get install webmin --install-recommends -y
```
- After installation, you can access the webmin interface on port 10000