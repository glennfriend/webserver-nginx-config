
server {
    listen 443;
    server_name www.example.com;
    index index.html index.php index.htm;
    access_log /var/log/nginx/www.example.com.access.log;
    error_log  /var/log/nginx/www.example.com.error.log;

    # https
    include /etc/nginx/webserver-nginx-config/my/ssl.conf;


    #
    # wordpress
    #
    root /var/www/wordpress;
    try_files $uri $uri/ /index.php;
    location / {
        try_files $uri $uri/ /index.php?q=$uri&$args;
        index index.php;
        include /etc/nginx/webserver-nginx-config/my/wordpress.conf;
        include /etc/nginx/webserver-nginx-config/my/php72.conf;

    }

    location /html {
        alias /var/www/html;
        index index.html index.php index.htm;
        include /etc/nginx/webserver-nginx-config/my/php73.conf;
    }

    #
    # phpmyadmin
    #
    location /your-phpmyadmin-route {
        alias /var/www/phpmyadmin;
        include /etc/nginx/webserver-nginx-config/my/php72.conf;
    }

}

