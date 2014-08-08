# Two cd aliases
alias ..='cd ..'
alias ...='cd ../../'

# A few git aliases
alias gs='git status -sb'
alias gd='git diff'
alias gdh='git diff HEAD'

# Postgres Backups
alias ppipub_dump='pg_dump -Fc --no-acl --no-owner -h localhost ppipub_development > ppilocal.dump'
alias tibethgs_dump='pg_dump -Fc --no-acl --no-owner -h localhost tibethgs_development > tibethgs.dump'
alias jofiusa_dump='pg_dump -Fc --no-acl --no-owner -h localhost jofiusa_development > jofiusalocal.dump'
alias ppipub_restore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d ppipub_development heroku.dump'
alias jofiusa_restore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d jofiusa_development heroku.dump'
alias tibethgs_restore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d tibethgs_development heroku.dump'
alias chasingb_restore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d chasingb_development heroku.dump'
alias jofi.us_restore='pg_restore --verbose --clean --no-acl --no-owner -h localhost -d jofius_development heroku.dump'

#Heroku
alias capture='heroku pgbackups:capture --expire && curl -o heroku.dump `heroku pgbackups:url`'
alias dump='curl -o latest.dump `heroku pgbackups:url`'
alias shipit='git push heroku master'

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
alias brownbox='cd ~/Sites/brownbox && chgems'
alias chasingb='cd ~/Sites/chasingb && chgems'
alias ppipub='cd ~/Sites/ppipub && chgems'
alias jofiusa='cd ~/Sites/jofiusa && chgems'
alias tibethgs='cd ~/Sites/tibethgs && chgems'
alias jofi.us='cd ~/Sites/jofius && chgems'
alias jobfinderusa='cd ~/Sites/jobfinderusa && chgems'

#Redis
alias redisup='redis-server /usr/local/etc/redis.conf'
alias redis='redis-cli'

#Capistrano
alias caps='cap deploy:setup'
alias capd='cap deploy'

#Vagrant VMWare Fusion Provider
alias vagrant_up='vagrant up --provider=vmware_fusion'
alias vagrant_init='vagrant init precise64'

#Homebrew
alias brewup='brew update && brew upgrade && brew cleanup'