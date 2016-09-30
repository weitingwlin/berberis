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
  setBAMMpriors(read.tree("BAMMout/mytree.tre"))
  
## make the circular plot
  tree <- read.tree("BAMMout/mytree.tre")
  edata <- getEventData(tree, eventdata = "BAMMout/event_data.txt", burnin=0.1)
  plot.bammdata(edata, lwd=3, method="polar", pal="temperature")

  allrates <- getCladeRates(edata)
## test convergence    
  mcmcout <- read.csv("BAMMout/mcmc_out.txt", header=T)
  plot(mcmcout$logLik ~ mcmcout$generation)

## The next step is to discard some as burnin. Here we???ll discard the first 10% of samples as burnin:    
  burnstart <- floor(0.1 * nrow(mcmcout))
  postburn <- mcmcout[burnstart:nrow(mcmcout), ]
  
  library(coda)
  effectiveSize(postburn$N_shifts)
  effectiveSize(postburn$logLik)
  # " we want these to be at least 200 "
  
  post_probs <- table(postburn$N_shifts) / nrow(postburn)
  
  names(post_probs)