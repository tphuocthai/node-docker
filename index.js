const http = require('http');
const port = process.env.PORT || 3000;

const requestHandler = (request, response) => {
  response.end('Hello Node.js Server! ' + process.env.ENV_MSG);
}

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
  if (err) {
    return console.log('something bad happened', err);
  }

  console.log(`server is listening on ${port}`);
});
