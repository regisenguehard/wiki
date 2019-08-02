# Redirection WWW
    RewriteCond %{HTTP_HOST} ^mondomaine.com$
    RewriteCond %{HTTP_HOST} !^www.mondomaine\.com$
    RewriteRule ^(.*)$ https://www.mondomaine.com/$1 [L,R=301]
    
# Redirection HTTPS
    RewriteCond %{HTTPS} off
    RewriteCond %{HTTP_HOST} ^www.mondomaine\.com$
    RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]



# Autre méthode :

    RewriteEngine on
    RewriteCond %{HTTP_HOST} !^www\. [OR]
    RewriteCond %{HTTPS} off
    RewriteCond %{HTTP_HOST} ^(?:www\.)?(.+)$ [NC]
    RewriteRule ^ https://www.%1%{REQUEST_URI} [NE,L,R=301]
