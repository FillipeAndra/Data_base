
- primeiro você faz a instalação normalmente com o package manager
	
	- ex: sudo pacman -S postgresql

- depois acesse sua máquina como sudo e use o seguinte comando para trocar para o usuário postgres como sudo

	- sudo -u -i postgres

- como usuário postgres crie o novo usuário que você vai usar no banco como admin

	- create role nome eith login superuser password 'senha';

- depois disso vá para o diretório onde fica o arquivo de configuração do postgres

	- para debian: /etc/postgres/'numero_da_versão'/main
	
	- para arch: /var/lib/postgres/data

- lá edite o arquivo pg_hba.conf usando o sudo

	- modifique uma das últimas linhas onde abaixo de TYPE_DATABASE tem 'local'. Lá troque o valor abaixo do campo METHOD para 'scram-sha-256'.
	
- assim agora ele vai passar a pedir senha e vai impedir o usuário postgres de logar, mas como você já criou outro usuário superuser, que você sabe a senha, passe a usar ele.