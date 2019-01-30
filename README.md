# webserver-nginx-config


## h5bp
- update at 2019-01-30
- https://github.com/h5bp/server-configs-nginx

## setup
```
sudo git clone https://github.com/glennfriend/webserver-nginx-config.git  /etc/nginx/webserver-nginx-config
vi /etc/nginx/sites-available/default
sudo nginx -t && sudo service nginx reload
```

## basic example
```
include /etc/nginx/webserver-nginx-config/h5bp/internet_explorer/x-ua-compatible.conf;
include /etc/nginx/webserver-nginx-config/h5bp/location/security_file_access.conf;
include /etc/nginx/webserver-nginx-config/h5bp/security/server_software_information.conf
include /etc/nginx/webserver-nginx-config/my/security_file_access.conf;
include /etc/nginx/webserver-nginx-config/my/logs.conf;
```
