# Installer mailgun sur un site Symfony
## Ajouter les bundles avec composer
`composer require cspoo/swiftmailer-mailgun-bundle php-http/httplug-bundle php-http/guzzle6-adapter`

## Déclarer les bundles dans le AppKernel
	new cspoo\Swiftmailer\MailgunBundle\cspooSwiftmailerMailgunBundle(),
	new Http\HttplugBundle\HttplugBundle(),

## Ajouter les paramètres dans parameters.yml.dist et parameters.yml
    mailgun.key:
    mailgun.domain:

## Mettre à jour la config config.yml
	cspoo_swiftmailer_mailgun:
	    key: "%mailgun.key%"
	    domain: "%mailgun.domain%"
	    http_client: 'httplug.client'
	
	swiftmailer:
	    transport: "mailgun"
	    spool:
	        type: memory
