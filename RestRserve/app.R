library(RestRserve)

# Create a new RestRserve application
app = Application$new(
    content_type = "text/plain"
)

# Define the handler function
hello_query_handler = function(request, response) {
    # Extract 'name' parameter from the query string
    nm = request$parameters_query[["name"]]
    response$body = sprintf("Hello, %s!", nm)
}

# Add the GET endpoint for /greet
app$add_get(
    path = "/api/greet",
    FUN = hello_query_handler
)

# Start the backend server on port 8081
backend = BackendRserve$new()
backend$start(app, http_port = 8081)
