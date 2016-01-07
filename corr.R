corr = function(directory, threshold = 0){
  files_list = list.files(directory,full.names = TRUE)
  dat = numeric(0)
  
  for(i in 1:length(files_list)){
    m = read.csv(files_list[i])
    cc = sum((!is.na(m$sulfate)) & (!is.na(m$nitrate)))
    if (cc > threshold){
      t = m[which(!is.na(m$sulfate)),]
      s = t[which(!is.na(t$nitrate)),]
      dat = c(dat,cor(s$sulfate, s$nitrate))
    }
  }
  dat
}

