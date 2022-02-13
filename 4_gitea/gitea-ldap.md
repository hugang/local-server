|项目|内容|
|---|---|
|认证类型|LDAP (via BindDN)|
|认证名称|ldap-server|
|安全协议|Unencrypted|
|主机|ldap-server|
|端口|389|
|绑定 DN|cn=admin,dc=mydomain,dc=com|
|绑定密码|•••••|
|用户搜索基准|ou=cloud,dc=mydomain,dc=com|
|用户过滤规则|(&(objectClass=posixAccount)(uid=%s))|
|电子邮箱属性|email|

