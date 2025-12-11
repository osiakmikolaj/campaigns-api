# 1. Wybierz środowisko Node.js (lekka wersja alpine)
FROM node:18-alpine

# 2. Ustaw katalog roboczy wewnątrz kontenera
WORKDIR /app

# 3. Skopiuj pliki package.json, żeby zainstalować zależności
COPY package*.json ./

# 4. Zainstaluj zależności
RUN npm install

# 5. Skopiuj resztę plików (server.js, db.json)
COPY . .

# 6. Poinformuj Docker, że aplikacja może używać portu (opcjonalne, ale dobra praktyka)
EXPOSE 8080

# 7. Komenda startowa
CMD ["node", "server.js"]