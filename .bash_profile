#PS1 Customization
export PS1="\[\e[32m\]lucas\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[32m\]\s\[\e[m\]\[\e[37m\]:\[\e[m\]\[\e[34m\]\w\[\e[m\] \\$ "

# Color Settings
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR='vim'

#ls to ls vertical documentation
#alias ls='ls -1'

#Alias to show hidden files
alias ll='ls -la'

#Personal Bin path
export PATH="~/bin:$PATH"
export PATH=/usr/local/bin:$PATH

# Go PATH
export PATH=${HOME}/go/bin:$PATH

# Alias
alias chrome="open -a 'Google Chrome'"
alias jl="jupyter lab"
alias jn="jupyter notebook"

# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/coco/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/coco/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/coco/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/coco/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< con:wqda init <<<
