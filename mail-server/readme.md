```bash
vi /etc/postfix/main.cf

# 172.17.0.1を追加
mynetworks = 127.0.0.0/8 [::ffff:127.0.0.0]/104 [::1]/128, 172.17.0.1
```
