export ZSH="/mnt/nfs/homes/dhubleur/.oh-my-zsh"

ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

DISABLE_UPDATE_PROMPT="true"

plugins=(git)

alias zshconf="vim ~/.zshrc"
alias vimconf="vim ~/.vimrc"
alias norm="norminette -R CheckForbiddenSourceHeader"
alias normh="norminette -R CheckDefine"
alias gc42="gcc -Wall -Wextra -Werror"

alias gita="git add ."
alias gits="git status"
alias gitc="git commit -m"
alias gitp="git push origin master"

alias gitas="git add . && git status"
function gitcp()
{
        git commit -m "$@" && git push origin master
}
alias gitcl="git clone"

alias val="valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all --show-reachable=yes"

function cd()
{
        builtin cd $@ && ls
}

#alias fsave="cd /mnt/nfs/homes/dhubleur/Documents && ./save.sh"

! pgrep RP42 > /dev/null && (nohup ~/Documents/RP42 2>&1 > /dev/null &) 2>&1 > /dev/null
