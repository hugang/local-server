https://docs.nextcloud.com/server/latest/admin_manual/configuration_server/reverse_proxy_configuration.html#example

If you want to access your Nextcloud installation http://domain.tld/nextcloud via a multiple domains reverse SSL proxy https://ssl-proxy.tld/domain.tld/nextcloud with the IP address 10.0.0.1 you can set the following parameters inside the config/config.php.

```php
[//]: # (nginx server ip)
[//]: # (nginx host server name)
  'trusted_proxies' => ['172.18.0.8'],
  'overwritehost'     => 'file.hugang.io',
  'overwriteprotocol' => 'https',
  'overwritecondaddr' => '^172\.18\.0\.8$',
  'overwrite.cli.url' => 'https://file.hugang.io/'
```
