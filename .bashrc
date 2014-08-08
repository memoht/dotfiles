#https://github.com/postmodern/chruby
source /usr/local/share/chruby/chruby.sh

# turn next line on after installing chruby
chruby ruby-2.1.2

#http://postgresapp.com
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000

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
