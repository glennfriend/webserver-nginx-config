# webserver-nginx-config


## h5bp
- update at 2019-01-30
- https://github.com/h5bp/server-configs-nginx

## basic example
```
include h5bp/internet_explorer/x-ua-compatible.conf;
include h5bp/location/security_file_access.conf;
include h5bp/security/server_software_information.conf
include my/security_file_access.conf;
include my/logs.conf;
```
