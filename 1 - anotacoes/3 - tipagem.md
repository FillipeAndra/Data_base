
- para valores numéricos tem:
	
	- float
	- int
	- double

	*Números que não precisam ser calculados ou tratados, podem ser armazenados como varchar

- para palavras ou caracteres:

	- char (cada caractere consome 1 byte (8 bits)) (melhor quando sabe que o tamanho não vai variar)
		
		- o char funciona como uma array que deixa reservado a quantidade que foi delimitada, mesmo que não use

	- varchar
	
		- a quantidade de espaço pode ir até o que foi delimitado, mas se não for usado o espaço não é alocado (lembra uma lista dinâmica em C)

	- enum
		
		- cria possibilidade de escolha entre os valores fornecidos durante a criação da coluna

- para arquivos ou imagens:

	- blob

- para texto muito extenso:

	- text