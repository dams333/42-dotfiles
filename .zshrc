ZSH_THEME="agnoster"

source ~/.oh-my-zsh/oh-my-zsh.sh

DISABLE_UPDATE_PROMPT="true"

alias zshconf="vim ~/.zshrc"
alias vimconf="vim ~/.vimrc"
alias norm="norminette -R CheckForbiddenSourceHeader"
alias gcc42="gcc -Wall -Wextra -Werror"
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
alias gcl="git clone"

alias val="valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all --show-reachable=yes"

function cd()
{
        builtin cd $@ && ls
}

alias vogpush="cd /mnt/nfs/homes/dhubleur/Documents && ./push.sh"
alias minishell_leaks='valgrind --leak-check=full --track-fds=yes --show-leak-kinds=all --suppressions=.ignore_readline ./minishell'
export PATH=$PATH:~/.local/bin

! pgrep RP42 > /dev/null && (nohup /sgoinfre/goinfre/Perso/jmaia/Public/RP42 2>&1 > /dev/null &) 2>&1 > /dev/null
true
export PATH=$HOME/.brew/bin:$PATH
alias c=clear
alias clip="xclip -selection clipboard"
export PATH=$PATH:~/Documents/shiet_dev/node_docker
