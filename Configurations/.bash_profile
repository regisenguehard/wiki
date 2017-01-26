# Functions
gitfastcommit() {
	git add .
	git commit -m "$1"
}

gitfastcommitpush() {
	git add .
	git commit -m "$1"
	git push
}

sf2_updateproject() {
	git pull
	composer install
	app/console doctrine:schema:update --force
	app/console assetic:dump
	app/console cache:clear
	app/console cache:clear --env=prod
}

sf3_updateproject() {
	git pull
	composer install
	bin/console doctrine:schema:update --force
	bin/console assetic:dump
	bin/console cache:clear
	bin/console cache:clear --env=prod
}

# Aliases GIT
alias gfc=gitfastcommit
alias gfcp=gitfastcommitpush
alias gst='git status'
alias gdf='git diff'
alias gco='git checkout'
alias gb='git branch'
alias gm='git merge'
alias gpl='git pull'
alias gph='git push'
alias glg='git log'
alias gbr='git branch'
alias gcom='git commit'
alias gtr="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Aliases SF2
alias sf2:update=sf2_updateproject
alias sf2:bundle='app/console generate:bundle'
alias sf2:entity='app/console doctrine:generate:entity'
alias sf2:entities='app/console doctrine:generate:entities'
alias sf2:fix='app/console doctrine:fixtures:load'
alias sf2:dbcr='app/console doctrine:database create'
alias sf2:dbup='app/console doctrine:schema:update --force'
alias sf2:asset='app/console assetic:dump'
alias sf2:ca='app/console cache:clear'
alias sf2:caprd='app/console cache:clear --env=prod'

# Aliases SF3
alias sf3:update=sf3_updateproject
alias sf3:bundle='bin/console generate:bundle'
alias sf3:entity='bin/console doctrine:generate:entity'
alias sf3:entities='bin/console doctrine:generate:entities'
alias sf3:fix='bin/console doctrine:fixtures:load'
alias sf3:dbcr='bin/console doctrine:database create'
alias sf3:dbup='bin/console doctrine:schema:update --force'
alias sf3:asset='bin/console assetic:dump'
alias sf3:ca='bin/console cache:clear'
alias sf3:caprd='bin/console cache:clear --env=prod'