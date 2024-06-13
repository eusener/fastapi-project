# PROJETO: fastapi-core

Modelo de api baseada no fastapi com autenticação completa.

## Instalação

Instruções sobre como instalar e configurar o projeto.
# Requisitos do projeto
- python 3.12 >
- poetry 


## Install poetry para gestão de dependencias:
ubuntu (adapte a distribuição/sistema que utilizar):  

`sudo apt install python3-pip python3.12-dev python3.12-full python3.12`  
`sudo apt install pipx`

### Instalar poetry
`pipx install poetry`

### Restaurar dependencias do projeto
`poetry shell`  
`poetry install`

### Adicionando pacotes ao projeto
`poetry add [pacote]`

### Adicionando pacotes de desenvolvimento ao projeto    
`poetry add --group dev [pacote]`

### Gerar arquivo requirements.txt para deploy (docker e outros PaaS)
`poetry export --format=requirements.txt --without-hashes > requirements.txt`

### Testar aplicação, após restaurar os pacotes execute o comando abaixo na raiz do projeto:  
`uvicorn app.main:app --reload`


## Licença
Informações sobre a licença do projeto.


# Falando de Docker

## Comandos Básicos do Docker  
`docker run`  
> O comando docker run é usado para criar e iniciar um container. Por exemplo, docker run hello-world executa um container que imprime uma mensagem de boas-vindas.  

`docker pull`  
> docker pull é utilizado para baixar uma imagem Docker do Docker Hub ou de outro registro. Por exemplo, docker pull ubuntu baixa a imagem mais recente do Ubuntu.  

`docker build`  
> Com docker build, você pode construir uma imagem Docker a partir de um Dockerfile. Este comando é fundamental no processo de criação de imagens personalizadas.  

## Gerenciamento de Containers  
`docker ps`
> docker ps lista todos os containers em execução. Com opções adicionais, também é possível ver containers parados.  

`docker stop`  
> Para parar um container em execução, usa-se docker stop, seguido do ID ou nome do container.  

`docker rm`
> docker rm remove um ou mais containers. É importante garantir que o container esteja parado antes de tentar removê-lo.  

## Trabalhando com Imagens Docker
`docker images`  
> O comando docker images lista todas as imagens Docker disponíveis localmente.

`docker rmi`  
> Para remover uma imagem local, usa-se docker rmi, seguido do ID da imagem.  

`docker commit`  
> docker commit cria uma nova imagem a partir das alterações feitas em um container.  

## Networking no Docker

`docker network`  
> O Docker permite a criação de redes para conectar containers. O comando docker network é usado para gerenciar essas redes.  

### Exemplo prático
> Um exemplo prático poderia envolver a criação de uma rede e a conexão de dois containers a ela para permitir a comunicação entre eles.

> Vamos agora pra prática e criar uma rede no Docker, conectar dois containers a ela, permitindo que eles se comuniquem entre si.

> É uma prática comum em desenvolvimento e operações de sistemas para testar a interação entre diferentes serviços ou aplicações em um ambiente isolado.

### Vamos pro passo a passo:
> Criação de uma Rede Docker:  

`docker network create minha-rede`  

### Execução de Dois Containers na Rede:

`docker run -dit --name container1 --network minha-rede ubuntu`  
`docker run -dit --name container2 --network minha-rede ubuntu`  

> Comunicação entre os Containers:

Entre no primeiro container:  
`docker exec -it container1 bash`
`ping container2`  

### Encerramento e Limpeza:
> Quando terminar, você pode sair dos containers e pará-los:
`docker stop container1 container2`

>Remover containers:  
`docker rm container1 container2`

`docker network rm minha-rede`  


