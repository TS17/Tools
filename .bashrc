export factory=/c/Factory

alias src="source ~/.bashrc"
alias linux="ssh thanuson@192.168.164.3"
alias factory="cd /c/Factory"

# History
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTTIMEFORMAT="%F %T "

shopt -s histappend

__update_history() {
	history -a
	history -n
}

case ";$PROMPT_COMMAND;" in
	*";__update_history;"*) ;;
	*) PROMPT_COMMAND="__update_history${PROMPT_COMMAND:+; $PROMPT_COMMAND}" ;;
esac

# Docker
alias d-c="docker container ls"
alias d-i="docker images"
alias d-v="docker volume ls"

alias dc="docker-compose"
alias dm="docker-machine"

d-rm() {
	for i in $*
	do
		docker stop "$1"
		docker rm "$1"
		shift
	done
}

d-rmi() {
	for i in $*
	do
		docker rmi "$1"
		shift
	done
}

d-ssh() {
	docker exec -it "$1" bash 
}

# Git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gp="git push"
alias gpl="git pull"
alias gf="git fetch"
alias gb="git branch"
alias gba="git branch -a"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gd="git diff"
alias gds="git diff --staged"
alias gl="git log --oneline"
alias glog="git log --oneline --graph --decorate --all"
alias gm="git merge"
alias gr="git remote -v"
alias gst="git stash"
alias gstp="git stash pop"
alias gstl="git stash list"
alias grb="git rebase"
alias grbi="git rebase -i"
alias grs="git reset"
alias grsh="git reset --hard"
alias gt="git tag"

g-cleanup() {
	git branch --merged | grep -v "\*\|master\|main\|develop" | xargs -n 1 git branch -d
}

g-undo() {
	git reset --soft HEAD~1
}

# Terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfaa="terraform apply -auto-approve"
alias tfd="terraform destroy"
alias tfda="terraform destroy -auto-approve"
alias tff="terraform fmt"
alias tfr="terraform fmt -recursive"
alias tfv="terraform validate"
alias tfo="terraform output"
alias tfs="terraform state list"
alias tfss="terraform state show"
alias tfw="terraform workspace list"
alias tfws="terraform workspace select"
alias tfwn="terraform workspace new"
alias tfim="terraform import"
alias tfre="terraform refresh"

tf-init-upgrade() {
	terraform init -upgrade
}

tf-plan-out() {
	terraform plan -out="$1"
}

tf-apply-plan() {
	terraform apply "$1"
}