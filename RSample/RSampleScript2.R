start.time <- Sys.time()
library(jsonlite)
library(httr)
library(base64enc)
library(namsor)

#setwd("D:/Sync/Dropbox/NamSor_CarmenAguilarGarcia/")

df<-read.table(file="example_pipe_input.txt", header =FALSE , sep = "|", quote = "" )
#df<- df[1:102,]

names<- df
names$V1<-as.character(names$V1)
names$V2<-as.character(names$V2)
names$V3<-as.character(names$V3)

f.name <- "Gender_fire.csv" 
write(c(""), file = f.name, ncolumns = 5)

step_by=10000
start= 1
fin=step_by
step_by=step_by
N=ceiling(nrow(names)/step_by)

for(k in 1:N){
  namesnames<- names[start:fin,]
  namesnames<- na.omit(namesnames)
  
  r_gender<-c()
  
  
  for (t in 1:nrow( namesnames)){
    y <- PersonalNameGeoIn$new(as.character(t),namesnames$V2[t],namesnames$V3[t])
    r_gender <- c(r_gender,y) 
  }
  var_gender <- BatchPersonalNameGeoIn$new(personalNames = r_gender)
  api.instance <- PersonalApi$new()
  api.instance$apiClient$apiKeys['X-API-KEY'] <- '83ad28e3b3f92de1494181624864bec6';
  result_gender <- api.instance$GenderFullGeoBatch(batch.personal.name.geo.in=var_gender)
  
  gendercol<-vector()
  
  for (n in 1:nrow( namesnames)) {
    #print(result_gender$personalNames[[n]]$likelyGender)
    genderdata <- result_gender$personalNames[[n]]$likelyGender
    gendercol[n] <- genderdata
    write(c(namesnames[,1][n],namesnames[,2][n], namesnames[,3][n],
            namesnames[,4][n],gendercol[n]), file = f.name, sep=",",
          ncolumns = 5, append = TRUE)
  }
  
  start= start+step_by
  fin= fin+step_by
  print(k)
  
}

dData <- read.csv(f.name, header = F, sep = ",")

end.time <- Sys.time()
time.taken <- end.time - start.time
time.taken
