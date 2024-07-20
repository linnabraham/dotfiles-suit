# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

HISTSIZE=5000
HISTFILESIZE=50000

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/data/linn/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/data/linn/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/data/linn/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/data/linn/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#eval "$(ssh-agent -s)" &>/dev/null
#ssh-add ~/.ssh/solar_deploy_key &>/dev/null
#ssh-add ~/.ssh/iucaa_suit &>/dev/null
conda activate solar311
