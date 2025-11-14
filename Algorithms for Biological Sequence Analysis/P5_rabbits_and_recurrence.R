#Given: Positive integers n???40 and k???5.
#Return: The total number of rabbit pairs that will be present after n months, if we begin with 1 pair
#and in each generation, every pair of reproduction-age rabbits produces a litter of k rabbit pairs 
#(instead of only 1 pair).

sir=c()
sir[1]=1
sir[2]=1
k=4
n=31

for (i in 3:n){
  sir[i]=sir[i-1]+sir[i-2]*k
}

sir