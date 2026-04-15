# 1. On utilise Node.js version 18
FROM node:22

# 2. On crée le dossier de l'app dans le conteneur
WORKDIR /usr/src/app

# 3. On installe les dépendances
COPY package*.json ./
RUN npm install

# 4. On copie ton code source (index.js, etc.)
COPY . .

# 5. ON OUVRE LA FENÊTRE 
EXPOSE 3000

# 6. On démarre l'application
CMD [ "node", "index.js" ]
