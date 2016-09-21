# 

  library(ape)
  
  url<- 'http://bamm-project.org/_downloads/whaletree.txt'
       
  mytree <- download.file(url, 'mytree.tre')
  
  v1 <- read.tree("mytree.tre")
 # v <- read.tree("whaletree.tre")
  is.ultrametric(v1)
  is.binary.tree(v1)
# Now to check min branch length:
  min(v1$edge.length)
  
#############################
  library(BAMMtools) # Assuming you have installed BAMMtools!
  setBAMMpriors(read.tree("mytree.tre"))