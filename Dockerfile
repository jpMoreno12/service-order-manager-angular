FROM node:lts-alpine3.22

# Instala vim e ping
RUN apk update && apk add --no-cache \
    vim \
    iputils \
    bash

# Instala Angular CLI globalmente
RUN npm install -g @angular/cli

# Diretório de trabalho
WORKDIR /app

# Expõe a porta padrão do Angular
EXPOSE 4200

# Comando padrão
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll=2000"]
