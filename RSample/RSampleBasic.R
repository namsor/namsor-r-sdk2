library(namsor)

var.first.name <- 'John' # character | 
var.last.name <- 'Smith' # character | 
var.country.iso2 <- 'US' # character | 

#Infer the likely gender of a name, given a local context (ISO2 country code).
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key 
api.instance$apiClient$apiKeys['X-API-KEY'] <- '83ad28e3b3f92de1494181624864bec6';
result <- api.instance$GenderGeo(var.first.name, var.last.name, var.country.iso2)
dput(result)
print(result)