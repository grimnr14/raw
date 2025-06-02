#convert xlsx to csv raw
setwd("C:/Users/chris/OneDrive/Documents/GitHub/raw/raw/")
d<-dir("./")
d<-d[as.numeric(substr(d,1,4)<2019)&str_detect(d,".csv")==F&!is.na(as.numeric(substr(d,1,4)))]

for(i in d){
  e<-read_excel(path=paste0("./",i),sheet=3)
  write.table(as.data.frame(e),paste0(substr(i,1,nchar(i)-5),".csv"),sep=",",col.names=T,row.names=F)
}


