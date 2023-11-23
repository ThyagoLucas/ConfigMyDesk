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

	



