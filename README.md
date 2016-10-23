How to use it.

# 1.Prepare a server and install Apache ,PHP, git and netcat

### Ubuntu 14.14 LST

```
$ sudo apt-get install apache2 php5 git netcat
```

# 2.Log in to the server and clone this repository

```
root@ubuntu:~# git clone https://github.com/greymd/webhook_test.git
root@ubuntu:~# cd webhook_test/
```


# 3.execution

```
nohup bash -c 'while true;do echo "HTTP/1.0 200 Ok" | nc -l 8080 > /dev/null && git pull origin master && rsync -a ./www/html/ /var/www/html ;done' &
```
