<?php

defined('ENABLE_URL_REWRITE') or define('ENABLE_URL_REWRITE', true);
defined('LOG_DRIVER') or define('LOG_DRIVER', 'system');


// Enable LDAP authentication (false by default)
define('LDAP_AUTH', true);

define('LDAP_BIND_TYPE', 'proxy');
define('LDAP_USERNAME', 'cn=admin,dc=mydomain,dc=com');
define('LDAP_PASSWORD', 'admin');

define('LDAP_SSL_VERIFY', true);

// LDAP server hostname
define('LDAP_SERVER', 'ldap-server');

// LDAP properties
define('LDAP_USER_BASE_DN', 'ou=cloud,dc=mydomain,dc=com');
define('LDAP_USER_FILTER', 'uid=%s');
