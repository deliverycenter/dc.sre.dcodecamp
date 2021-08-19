# Setting up Nginx
## Access your terminal.
## Download the NGINX signing key:

```
$ sudo wget http://nginx.org/keys/nginx_signing.key
```

## Add the key:

```
$ sudo apt-key add nginx_signing.key
```

## Change directory to /etc/apt.

```
$ cd /etc/apt
```

## Edit the sources.list file, appending this text at the end:

```
deb http://nginx.org/packages/ubuntu xenial nginx
deb-src http://nginx.org/packages/ubuntu xenial nginx
```

## Update the NGINX software:

```
$ sudo apt-get update
```

## Install NGINX:

```
$ sudo apt-get install nginx
```
### Type Y when prompted.


## Start NGINX:
```
$ sudo service nginx start
```

### Ref: https://www.nginx.com/blog/setting-up-nginx/


# Installing libssl1.0-dev

```
echo "deb http://security.ubuntu.com/ubuntu bionic-security main" | sudo tee -a /etc/apt/sources.list.d/bionic.list
sudo apt update
apt-cache policy libssl1.0-dev
sudo apt-get install libssl1.0-dev
```

### Ref: https://www.codegrepper.com/code-examples/shell/The+following+packages+have+unmet+dependencies%3A+nginx+%3A+Depends%3A+libssl1.0.0+%28%3E%3D+1.0.2~beta3%29

# Configuring static page through NGINX

```
server {
    listen 80;

    access_log /var/log/nginx/snake_futurestud_io_access.log;
    error_log  /var/log/nginx/snake_futurestud_io_error.log;

    root ${app_directory};
    index ${index.html};

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### Ref: https://futurestud.io/tutorials/nginx-how-to-serve-a-static-html-page