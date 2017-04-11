## Release 0: View HTTP Requests

* **What are some common HTTP status codes?**

Successful codes:
200 - represent successful response to a request
1xx - represent informational messages(rare)
3xx - represent redirection response
Error codes come in the form of 4xx(client-side) or 5xx(server-side) statuses:
403 - (forbidden) access to resource is forbidden
404 - (not found) requested resource is no longer available
500 - (internal server error) 
503 - (service unavailable) web server not available
504 - (gateway timeout) 

* **What is the difference between a GET request and a POST request? When might each be used?**

GET requests data from a specified resource and are used to retrieve remote data. GET requests can be cached, remain in the browser history, can be bookmarked, should never be used when dealing with sensitive data, have length restrictions, and should be used only to retrieve data. 
POST submits data to be processed to a specified resource and are used to insert or update remote data. POST requests are ever cached, do not remain in the browser history, cannot be bookmarked, and have no restrictions on data length.

* **Optional bonus question: What is a cookie (the technical kind, not the delicious kind)?**

An HTTP cookie is a small piece of data that a server sends to the user's web browser that may store it and send it back together with the next request to the same server. It's used to know if two requests came from the same browser allowing to keep a user logged in. The three main purposes cookies are used for are session management(user logins, shopping carts), personalizations(user preferences), and tracking(analyzing user behavior).

* **How does it relate to HTTP requests?**

When receiving a HTTP request, a server can send a set-cookie header with the response. The cookie is usually stored by the browser and afterwards, the cookie value is sent along with every request made to the same server as the content of a cookie HTTP header.