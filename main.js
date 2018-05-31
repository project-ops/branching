// This is a simple user counter webapp
var http = require("http")

//Creating HTTPServer
var userCount = 0;
http.createServer(function(request, response) {
	// Sending HTTP Header
	// HTTP Status code: 200 OK
	// Content Type: text/plain
	response.writeHead(200, {'Content-Type': 'text/plain'});
	userCount++;
	response.end('User Count : '+ userCount);
}).listen(8000);

console.log('Server is running at http://127.0.0.1:8000')
