- show data_directory; //mostra o diretório onde estão sendo armazenados os dados dos diferentes bancos do postgres

- o postegres não tem enum, então quando for criar uma coluna enum, primeiro é preciso rodar o seguinte comando antes da criação da tabela:

	- CREATE TYPE exemplo AS ENUM('ex1','ex2','ex3');

- \q; //comando para fechar a conexão com o banco

- psql -U usuario -d banco -W; //faz conexão do usuário com o banco desejado usando senha (o recomendável é conectar no banco postgres, criar o banco desejado, sair e entrar no novo).

- \dt; //mostra todas as tabelas do banco que esta conectado 

- \d+ tabela; //mostra as informações da tabela do banco que esta conectado 

- \l; //lista todos os bancos