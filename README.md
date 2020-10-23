# one-docker-bring-them-all
One repository to centralize dockers and dockers-compose useful for everyday use.

## Objetivo:
Centralizar alguns dockers básicos para serem utilizados de maneira práticas para desenvolvimento local e testes.

## Dockers:

# postgres:
* Serviço de banco de dados Postgres para criação de tabelas e armazenamentos de dados;
* Responde na porta 5432 (postgres://user:user@postgres:5432/postgres)

# jupyter:
* Serviço e Jupyter Notebook para executar códigos
* Responde na porta 8888 (localhost:8888)


# simple_http:
* Servidor Apache2 para renderizar páginas htmls.
* Responde na porta 80 (localhost)

# lambda_node
* Plugin serverless para testar funções aws lambda em node js
* Habilita a porta 3000 para requisições no serverless

Se for necessário utilizar alguma biblioteca da aws, é preciso enviar suas credenciais aws como variáveis de ambiente no arquivo .env (veja o exemplo no arquivo .env_sample):

Exemplo de execução do container:

```shell script
docker run \
-it \
--name serverless-docker \
--network host \
serverless-docker

docker start -a -i serverless-docker
```

\* `serverless-docker` é o nome do build da imagem desse exemplo
 

## Pastas

# data:
* Pasta comum contanto informações de dados que podem ser compatilhadas entre todos os containers.


## Como Executar:

Crie um arquivo `.env` com base no arquivo `.env_sample`
```bash
cp .env_sample .env
```

Execute o `docker-compose` 
```bash
docker-compose up
````


