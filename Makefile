install:
	make dbeaver && \
	make vscode && \
	make ohMyZsh && \

vscode:
	sudo snap install code --classic

dbeaver:
	sudo snap install dbeaver-ce

ohMyZsh:
	sudo apt-get install zsh && \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

docker:
	for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done &&\
	sudo apt-get update && \
	sudo apt-get install ca-certificates curl gnupg &&\
	sudo install -m 0755 -d /etc/apt/keyrings &&\
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg &&\
	sudo chmod a+r /etc/apt/keyrings/docker.gpg && \

	echo \
	  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
	  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
	  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt-get update && \
	
	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && \
	sudo docker run hello-world && \
	sudo groupadd docker && \
	sudo usermod -aG docker $USER
	

docker_compose:
	@echo "a59919699a" | sudo mkdir /usr/local/bin/docker-compose
	@echo "a59919699a" | sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
	sudo chmod +x /usr/local/bin/docker-compose && \
	docker-compose -v
	
discord:
	sudo snap install discord

nvm:
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && \
	make restart_terminal && \
	nvm install 18.12;

restart_terminal:
	

nestjs:
	-ToDo

vite:
	-ToDO
	
restart:
	sudo reboot
	
