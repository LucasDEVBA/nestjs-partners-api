# Usa uma imagem base do Node.js versão 21 slim
FROM node:21-slim

# Atualiza a lista de pacotes do apt e instala o openssl e o procps
# openssl é necessário para operações de segurança e procps fornece utilitários como ps, top, etc.
RUN apt update && apt install -y openssl procps

# Instala o NestJS CLI globalmente na versão 10.3.2
RUN npm install -g @nestjs/cli@10.3.2

# Define o diretório de trabalho dentro do contêiner
WORKDIR /home/node/app

# Define o usuário padrão como "node" para executar comandos a partir deste ponto
USER node

# Mantém o contêiner em execução indefinidamente para fins de depuração
CMD tail -f /dev/null
