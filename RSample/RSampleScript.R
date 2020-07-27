
#prepare workspace
if(!'devtools' %in% installed.packages()){
  install.packages(devtools)
}

if(!'readr' %in% installed.packages()){
  install.packages("readr")
}

if(!'namsor' %in% installed.packages()){
  install_github("namsor/namsor-r-sdk2")
}

#call packages
library(devtools)
library(namsor)
library(readr)

#call api
httr::set_config(httr::config(ssl_verifypeer = 0L))
api.instance <- PersonalApi$new()
api.instance$apiClient$apiKeys['X-API-KEY'] <- '115a15ea325a309f68a320eed0b592d6';

#call function
extractor <- function(names){
  
  ### Function calls api to assign gender by attributes ###
  
  #Input:
  
  #names - data.frame with 4 columns:
  # 1. id(char)
  # 2.first name(char)
  # 3. second name(char)
  # 4. country(char)
  
  
  #Output:
  #names - data.frame with 5 columns:
  # 1. id(char)
  # 2.first name(char)
  # 3. second name(char)
  # 4. country(char)
  # 5. gender(char)
  
  
  
  ## SPLIT TO LIST
  names_list <- split(names, 
                      factor(rep(seq(ceiling(nrow(names)/100)), 
                                 each = 100)[1:nrow(names)]))
  
  ## ADD ID
  names_list <- lapply(names_list, function(x){
    data.frame('new_id' = seq(nrow(x)), 
               'id' = x[, 1],
               'first_name' = x[, 2], 
               'last_name' = x[, 3], 
               'country' = x[, 4])
  })
  
  #create r_gender
  r_gender <- lapply(names_list, function(x){
    apply(x, 1, function(y){PersonalNameGeoIn$new(as.character(y[1]),y[3], y[4])})
  })
  #combine
  r_gender <- lapply(r_gender, function(x){c(x)})
  #create var gender
  var_gender <- lapply(r_gender, function(x){
    BatchPersonalNameGeoIn$new(personalNames = x)})
  #call api
  api.instance <- PersonalApi$new()
  api.instance$apiClient$apiKeys['X-API-KEY'] <- '115a15ea325a309f68a320eed0b592d6';
  #get result
  result_gender <- lapply(var_gender,
                          function(x){
                            api.instance$GenderFullGeoBatch(
                              batch.personal.name.geo.in=x)})
  #extract gender
  gender <- lapply(result_gender, function(x){lapply(x$personalNames, 
                                                     function(y){y$likelyGender})})
  
  #add gender
  names$gender <- unlist(gender)
  
  #return
  return(names)
}

#load big data
df2 <- data.frame(read_delim("D:/git/namsor-r-sdk2/RSample/example1_pipe_input.txt", 
                             "|", escape_double = FALSE, trim_ws = TRUE, 
                             col_names = FALSE))
#all char
str(df2)

#call function
df2_with_names <- extractor(df2)
