# one-docker

One docker to rule them all, One docker to find them, One docker to bring them all and in the darkness bind them.

## Objetivo

Centralizar alguns dockers básicos para serem utilizados de maneira práticas para desenvolvimento local e testes.

## Dockers

Crie um arquivo `.env` com base no arquivo `.env_sample`

```bash
cp .env_sample .env
```

Para utilizar alguma das imagens disponíveis primeiro faça ao build local:

```shell
docker-compose build {IMAGE_NAME}
```

E para iniciar um container

```shell
docker-compose up {IMAGE_NAME}
```

Os seguintes valores podem ser utilizados no `IMAGE_NAME`:

### **postgres**

* Serviço de banco de dados Postgres para criação de tabelas e armazenamentos de dados;
* Responde na porta 5432 (postgres://user:user@postgres:5432/postgres)

### **jupyter**

* Serviço e Jupyter Notebook para executar códigos
* Responde na porta 8888 (localhost:8888)

### **simple_http**

* Servidor Apache2 para renderizar páginas htmls.
* Responde na porta 80 (localhost)

### **lambda_node**

* Plugin serverless para testar funções aws lambda em node js
* Habilita a porta 3000 para requisições no serverless

## Pastas

### **data**

* Pasta comum contanto informações de dados que podem ser compatilhadas entre todos os containers.

## Makefile

Existe um arquivo `Makefile` com alguns comandos utéis:

* Realizar build de **todas** as imagens disponíveis:

```shell
make build
```

* Realizar build de **apenas uma imagem**  as imagens disponíveis:

```shell
IMAGE_NAME=jupyter make build_image
```

* Realizar o up de **todos** as imagens disponíveis:

```shell
make up
```

Ou para up em segundo plano:

```shell
make up_d
```

* Realizar o up de **apenas uma imagem** para um container em segundo plano:

```shell
IMAGE_NAME=jupyter make up_container
```

* Realizar o down de **todos** os container

```shell
make down
```

* Limpa **todos** os container e **todas** as imagens:

```shell
make destroy
```

## Contribuição

Repositório aberto a contribuição podendo ser adicionados novas imagens que sejam releantes para algum uso.
