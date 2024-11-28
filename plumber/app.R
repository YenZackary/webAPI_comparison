# Load the plumber package
library(plumber)

#* @get /api/greet
#* @param name The name of the person to greet (default is "World")
function(name = "World") {
    list(message = paste("Hello,", name, "!"))
}