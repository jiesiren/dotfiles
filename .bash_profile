# weather and the moon
alias weather='curl -4 http://wttr.in/'
alias moon='curl -4 http://wttr.in/Moon'

# editing and reloading bash profile
alias ebash='vim ~/.bash_profile'
alias rbash='source ~/.bash_profile'

# colours for `ls` command
alias ls='ls -G'
alias lsa='ls -la'

# (=^･ω･^=)
alias cat='bat'

# Parse git branch name for display in terminal prompt string
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# mkdir and cd into it
function mkcdir {
    mkdir -p -- "$1" && cd -P -- "$1"
}

export PS1="🚀 \e[35m\u@\h\e[0m:\e[32m\$(parse_git_branch)\e[0m \W \$ "
