complete = function(directory, id=1:332){
  files_list = list.files(directory,full.names=TRUE)
  counts = sapply(id,function(i){
    dat = read.csv(files_list[i])
    sum(complete.cases(dat))
  })
  data.frame(id=id, nobs=counts)
}

complete("specdata", 30:20)
