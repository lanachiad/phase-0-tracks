1. What are some common HTTP status codes?

* 404 Not Found: the requested resource is no longer available, or just not found. 
* 403 Forbidden: the resource is forbidden because the server maintaining a whitelist of machines that can access that system and the user's machine not being on it.
* 500 Internal Server Error: usually an error caused by the programmer.
* 503 Service Unavailable: the web server isn't available.
* 504 Gateway Timeout: when a proxy server needs to communicate with a secondary web server and access to that server timed out.

2. What is the difference between a GET request and a POST request? When might each be used?

GET-type requests have no additional effects if they are called more than once with the same input parameters. GET is used for viewing something without changing it.

POST-type requests may have side effects. POST is used for changing something.


3. Optional bonus: What is a cookie? How does it relate to HTTP requests?

Cookies are small files stored on a user's computer. They are designed to hold a small amount of data specific to a client and website, accessible by either the web server or client computer. They allow the delivery of a page tailored to a particular user.