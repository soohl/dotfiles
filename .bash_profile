# Terminal modification, show directory
export PS1='\n'
export PS1+='\[\e[0;32m\][\u\[\e[0m\]:\[\e[0;32m\]\w]\[\e[0m\]\n$ '
export CLICOLOR=1

#ls to ls vertical documentation
alias ls='ls -1'

#Alias to show hidden files
alias ll='ls -la'

#Personal Bin path
export PATH="~/bin:$PATH"

# added by Miniconda3 installer
export PATH="/Users/togaflex/miniconda3/bin:$PATH"
