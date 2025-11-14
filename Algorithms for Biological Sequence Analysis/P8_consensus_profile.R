#Given: A collection of at most 10 DNA strings of equal length (at most 1 kbp) in FASTA format.
#Return: A consensus string and profile matrix for the collection. 
#(If several possible consensus strings exist, then you may return any one of them.)

nucleotide_count <- function(sir) {
  count_A=count_C=count_G=count_T=0
  for (i in 1:nchar(sir))
  {
    if (substring(sir,i,i)=='A')
      count_A=count_A+1
    else if (substring(sir,i,i)=='C')  
      count_C=count_C+1
    else if (substring(sir,i,i)=='G')  
      count_G=count_G+1
    else if (substring(sir,i,i)=='T')  
      count_T=count_T+1
  }
  print(c(count_A,count_C,count_G,count_T))
}


profile=list('ATCCAGCT',
             'GGGCAACT',
             'ATGGATCT',
             'AAGCAACC',
             'TTGGAACT',
             'ATGCCATT',
             'ATGGCACT')
             
library(stringr)
profile=str_replace_all(profile,'\n','')

count=as.data.frame(matrix(nrow=nchar(profile[1]),ncol=4))
nucleotide=c("A","C","G","T")
consensus=c()

for (v in 1:nchar(profile[1])){
  sir=substring(profile,v,v)
  sir_new=sir[1]
  for (i in 2:length(sir)){
    sir_new=paste(sir_new,sir[i])
  }
  a=nucleotide_count(sir_new)
  count[v,]=nucleotide_count(sir_new)
  consensus=paste0(consensus,nucleotide[which.max(a)])
}

rezultat=t(count)
row.names(rezultat) <- nucleotide

consensus
rezultat
#write.csv(rezultat, file = 'my_data.csv')
#write.table(rezultat, file = 'my_data.txt')