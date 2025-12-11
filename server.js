const jsonServer = require("json-server");
const server = jsonServer.create();
const router = jsonServer.router("db.json");
const middlewares = jsonServer.defaults();

// KLUCZOWA ZMIANA: Pobierz port od Google (process.env.PORT) lub użyj 8080 lokalnie
const port = process.env.PORT || 8080;

server.use(middlewares);
server.use(router);

// KLUCZOWA ZMIANA: Słuchaj na '0.0.0.0' (wszystkie interfejsy) i na dynamicznym porcie
server.listen(port, "0.0.0.0", () => {
    console.log(`JSON Server is running on port ${port}`);
});
