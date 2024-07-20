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
alias clear='printf "\ec"'
alias pylint='/data/linn/miniconda3/bin/pylint --errors-only'
alias gsu='git status -uno'
alias gd='git diff'
alias gl='git log --graph --all --pretty=format:"%C(auto)%h%C(reset) %ad %C(auto)%d%C(reset) %s" --date=format:"%b %d, %Y"'
alias gs='git status'
set -o ignoreeof
source ~/git-prompt.sh
export PS1="\[\033[32m\]\w\[\033[33m\]\$(GIT_PS1_SHOWUNTRACKEDFILES=1 GIT_PS1_SHOWDIRTYSTATE=1 __git_ps1)\[\033[00m\]\n\t $ "
function set_conda_env_prompt {
    if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        PS1="($CONDA_DEFAULT_ENV) $PS1"
    fi
}

set_conda_env_prompt
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
