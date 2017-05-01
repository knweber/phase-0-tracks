What are some common HTTP status codes?

	404: The resource trying to be accessed is no longer available. May be due to a user mistyping a URL, wrong domain name, or the removal of the particular resource from the Internet.

	403: The user does not have access the the requested resource. 

	503: The web server trying to be accessed is not available at the current time for any number of reasons (e.g. being overloaded, down for maintenance).

	There are five categories of HTTP status codes: 1xx (informational), 2xx (success), 3xx (redirection), 4xx (client errors), and 5xx (server errors).

What is the difference between a GET request and a POST request? When might each be used?

	A GET request retrieves all information for the desired resource. All necessary information is included in the URL for the resource. An example of a GET request would be loading a website requiring no other input from the user (e.g. google.com). A POST request serves to request that information provided by the user be processed by the resource. An example of a POST request might be entering a password into a field on an HTML form or posting a comment on an article. 

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

	When processing requests, a server may send cookies via a response header. A cookie represents information that needs to be conveyed across requests. Without cookies, requests occur independent of each other, i.e. they do not 'remember' any information from previous requests. A cookie might be used to store a user identifier, password, items in an online shopping cart, etc., so this information can be used across multiple requests. The user's browser then stores the cookies from the servers visited.