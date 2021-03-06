#https://github.com/postmodern/chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# turn next line on after installing chruby
# chruby ruby-2.5.1

#http://postgresapp.com
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# bash history settings
HISTSIZE=10000
HISTFILESIZE=3000
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# Erase duplicates in history
export HISTCONTROL=erasedups

# make sure to use UTF-8 always, everywhere
export LC_CTYPE=en_US.UTF-8

# load extra goodies
# https://github.com/alexreisner/dotfiles
for f in .bash_aliases .bash_prompt .bash_functions .credentials; do
  [ -f "$HOME/$f" ] && source "$HOME/$f"
done

# other method to include just .bash_aliases
# https://github.com/telemachus/dotfiles/blob/master/bashrc
# [[ -f $HOME/.bash_aliases ]] && source $HOME/.bash_aliases

# http://guides.rubygems.org/faqs/
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
fi
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
