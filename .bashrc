export factory=/c/Factory

alias src="source ~/.bashrc"
alias linux="ssh thanuson@192.168.164.3"
alias factory="cd /c/Factory"

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