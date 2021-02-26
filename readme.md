#README


```
sudo docker run -d --restart=always -p 9999:80 -v /home/test_images:/var/www/images \
--name test_images_store \
 jiangxumin/alpine-nginx:latest
```
