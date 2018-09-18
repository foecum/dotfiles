# Remove dangling images
alias docker-clean='docker rmi -f $(docker images -a -q -f="dangling=true")'

# Remove lingering exited containers  
alias docker-clean-exit='sudo docker ps -a | grep Exit | cut -d " " -f 1 | xargs sudo docker rm'