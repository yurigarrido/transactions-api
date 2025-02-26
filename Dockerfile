# Usa uma imagem base menor para otimização
FROM node:18-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia apenas os arquivos essenciais primeiro para otimizar cache
COPY package.json package-lock.json ./  

# Instala as dependências do projeto
RUN npm install 

# Copia o restante dos arquivos do projeto
COPY . .  

# Expõe a porta que o Koa irá rodar (mude se necessário)
EXPOSE 3000  

# Comando para iniciar a aplicação
CMD ["npm", "run", "dev"]
