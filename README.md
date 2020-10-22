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

É necessário enviar suas credenciais aws como variárveis de ambiente no momento de executar o container da seguinte forma:

```shell script
docker run \
-it \
--name serverless-docker \
--network host \
-e AWS_REGION=us-east-1 \
-e AWS_ACCESS_KEY_ID=<sua key aqui> \
-e AWS_SECRET_ACCESS_KEY=<sua secret aqui> \
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


