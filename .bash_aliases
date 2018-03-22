# Two cd aliases
alias ..='cd ..'
alias ...='cd ../../'

# A few git aliases
alias gs='git status -sb'
alias gd='git diff'
alias gdh='git diff HEAD'

# Postgres Backups
alias ppipub_dump='pg_dump -Fc --no-acl --no-owner -h localhost ppipub_dev > ppilocal.dump'
alias tibethgs_dump='pg_dump -Fc --no-acl --no-owner -h localhost tibethgs_dev > tibethgs.dump'
alias ppipub_restore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d ppipub_dev heroku.dump'
alias tibethgs_restore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d tibethgs_dev heroku.dump'
alias ppipub_capture='heroku pg:backups capture --app ppipub && curl -o heroku.dump `heroku pg:backups public-url`'
alias redis_heroku='redis-cli -h redis-xxxxxx.cloud.redislabs.com -p 16671 -a xxxxxxxx'

#Heroku
alias capture='heroku pg:backups capture --expire && curl -o heroku.dump `heroku pg:backups public-url`'
alias dump='curl -o latest.dump `heroku pg:backups public-url`'
alias energize='git push heroku master'

#Rails
alias migrate="rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare"
alias restart="touch tmp/restart.txt && foreman start"
alias sandbox="rails console --sandbox"
alias console="rails console"
alias taildev='tail -f log/development.log'
alias tailtest='tail -f log/test.log'
alias bers='bundle exec rspec'

#Projects
#http://stackoverflow.com/questions/16199581/opening-sublime-text-on-command-line-as-subl-on-mac-os
#sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/bin/subl
alias brownbox='cd ~/Sites/brownbox'
alias ppipub='cd ~/Sites/ppipub'
alias tibethgs='cd ~/Sites/tibethgs'

#Redis
alias redis_local='redis-server /usr/local/etc/redis.conf'
alias redis='redis-cli'

#Capistrano
alias caps='cap deploy:setup'
alias capd='cap deploy'

#Vagrant VMWare Fusion Provider
alias vagrant_up='vagrant up --provider=vmware_fusion'
alias vagrant_init='vagrant init precise64'

#Homebrew
alias brew_up='brew update && brew upgrade && brew cleanup'

#Hanami
alias hanami_local='bundle exec hanami server'
