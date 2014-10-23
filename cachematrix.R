#creating the template of a matrix set and 
# calling the matrix through a function makeCacheMatrix
# the function will cache the result and help to recall 
#to avoid unncessary repeat in calculation
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
	{
    	  i<-NULL
        #set the initial matrix
        	  set<-function(matrix){
          	    
            	    m<<-matrix
              i<<-NULL
          	  }
        #set matrix done, how to get the matrix now
      	  
        	  get<-function(){m}
        #now inverse the matrix
      	  setInverse<-function (inverseMatrix){i<<-inverseMatrix}
      	  #now get the inverse of matrix
        	  getInverse<-function (){ i }
      
       	  #copy the list of methods from RD Peng program
       	  list(set=set,get=get,setInverse=setInverse, getInverse=getInverse)
      	  
      	  
    }
    
    
    ## Write a short comment describing this function
    #cachesolve should retrieve the inverse of the function to avoid recalculation
      	
      cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        	  m<-x$getInverse()
        	  
          	  if(!is.null(m)){
            	    
              	    message("getting cached data")
            	    return(m)
          }
        	
          	matrixData<-x$get()
        	m<-solve(matrixData)%*% matrixData
        	x$setInverse(m)
        	m
        	}
    
    
    