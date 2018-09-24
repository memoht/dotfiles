# http://ss64.com/osx/syntax-bashrc.html
source $HOME/.bashrc

# homebrew - brew doctor recommended
PATH=/usr/local/bin:$PATH

# prompt config
#export PS1="\h:\W\$(grb_git_prompt) \u\$"
export PS1="___________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "
