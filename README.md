# Nginx Container

Docker container for a nginx web server.

* Mount or copy html files to /root, where they will be 'converted' (will copy the file to /usr/share/nginx/html, then |HOSTTYPE|, |HOSTNAME| being replaced in each .html file on startup)

Run
```
sudo docker run \
  -v %absolute/path/to/your/html%:/root
  --rm \
  -d \
  -p 80:80 \
  nginx
```


<!-- Run Command `sudo docker run -d --rm -p 80:80 -v ~/docker/cekeh.com/switch/root/etc/nginx/conf.d:/etc/nginx/conf.d -v ~/docker/cekeh.com/switch/root/usr/share/nginx/html:/usr/share/nginx/html --network my-net --name switch switch:v14` -->
