install:

instalations:
	sh mkdir instalations \
	cd instalations

vscode:
	@echo "SuaSenha" | sudo snap install code --classic

dbeaver:
	@echo "SuaSenha" | sudo snap install dbeaver-ce

ohMyZsh:
	@echo "SuaSenha" | sudo apt-get install zsh && \
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

docker:

docker_compose:
	@echo "a59919699a" | sudo mkdir /usr/local/bin/docker-compose
	@echo "a59919699a" | sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
	sudo chmod +x /usr/local/bin/docker-compose && \
	docker-compose -v
	
discord:
	mkdir discord && \
	cd discord && \
	wget https://discord.com/api/download?platform=linux&format=deb && \
	@DEB_FILE=$$(find . -maxdepth 1 -name '*.deb' -print -quit); \
	if [ -z "$$DEB_FILE" ]; then \
        echo "Erro: Nenhum arquivo DEB encontrado na pasta."; \
    else \
        echo "Instalando $$DEB_FILE..."; \
        sudo dpkg -i "$$DEB_FILE"; \
    fi

nvm:
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && \
	make restart_terminal &&
	nvm install 18.12;

restart_terminal:
	$(SHELL)

nestjs:
	-ToDo

vite:
	-ToDO
