docker run -d -p 80:80 -p 443:443 --name nginx-proxy -v /wordpress/nginx/certs:/etc/nginx/certs:ro -v /home/james/vhost.d:/etc/nginx/vhost.d:rw -v /etc/nginx/vhost.d -v /usr/share/nginx/html -v /var/run/docker.sock:/tmp/docker.sock:ro --label com.github.jrcs.letsencrypt_nginx_proxy_companion.nginx_proxy=true jwilder/nginx-proxy