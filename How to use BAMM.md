# How to use BAMM
## Install on Mac 
#### For detail see the [original document](http://bamm-project.org/settingup.html#bammsetup)
1. download the program from [here](http://bamm-project.org/download.html)
2. Move the **.tar.gz** file to folder **Application**
3. Open the terminal
4. `cd` to the **Application** folder
5. type `ls` to make sure the **.tar.gz** file is there
6. type `tar -xzf bamm-2.5.0-MacOSX.tar.gz`. If error occur, check the returned file name from step **5**. 
7. create a **control file** ([Here for detail](http://bamm-project.org/quickstart.html))
8. type `./bamm -c template_diversification.txt `. Should see something like this:

![plot1](images/plot1.png)

## Prepare the control file
The full document is [here](http://bamm-project.org/configuration.html)
The control file is where you **set parameters**. 

## Prepare the tree file
use this terminal command to  download tree data from url. (and rename it as **mytree.tre**)
`curl -o mytree.tre http://bamm-project.org/_downloads/whaletree.txt
`

## Run BAMM

### Move BAMM out
Move the output file to the analysis folder:

`mv chain_swap.txt mcmc_out.txt event_data.txt run_info.txt  /Users/weitinglin/Dropbox/Other_projects/BerberisEcoEvo/Rfiles/BAMMout/`


Check they are moved:

`ls`

## Analyse BAMM results in R



## Tips
### 1. [Usefull commands in terminal](http://www.dummies.com/computers/operating-systems/linux/common-linux-commands/)
* `ls` : List directory contents
* `cd` : Change to directory
* `clear`: command line screen
* `curl`
* `cp`
* `mv`: move
* `rm` :  remove 
* `alias`: create alias for command [see also](http://www.techradar.com/how-to/computing/apple/terminal-101-creating-aliases-for-commands-1305638)




   