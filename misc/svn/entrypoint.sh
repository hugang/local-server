#!/bin/sh

# add our svn location to the httpd config
cat <<EOF > /usr/local/apache2/conf/extra/svn.conf
LoadModule	dav_module           modules/mod_dav.so
LoadModule	dav_svn_module       /usr/lib/apache2/modules/mod_dav_svn.so
LoadModule	authz_svn_module     /usr/lib/apache2/modules/mod_authz_svn.so
LoadModule	ldap_module          modules/mod_ldap.so
LoadModule	authnz_ldap_module   modules/mod_authnz_ldap.so

# rewriting Destination because we're behind an SSL terminating reverse proxy
# see http://www.dscentral.in/2013/04/04/502-bad-gateway-svn-copy-reverse-proxy/  
# RequestHeader edit Destination ^https: http: early

<Location />
    DAV svn
    SVNParentPath /var/svn
    SVNListParentPath On
    AuthName "My Subversion Repositories: Login with UserName and Password" 
    AuthBasicProvider ldap
    AuthType Basic
    AuthLDAPGroupAttribute member
    AuthLDAPGroupAttributeIsDN on
    AuthzSVNAccessFile "/var/svn/conf/svnaccess.conf"
    AuthLDAPURL ${AuthLDAPURL}
    AuthLDAPBindDN "${AuthLDAPBindDN}" 
    AuthLDAPBindPassword "${AuthLDAPBindPassword}" 
    Require valid-user
</Location>
EOF

# run the command given in the Dockerfile at CMD 
exec "$@"
