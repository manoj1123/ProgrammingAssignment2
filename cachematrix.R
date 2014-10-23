## Put comments here that give an overall description of what your
## functions do

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
  
  get<-function{m}
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
m<-solve(data)%*% matrixData
x$setInverse(m)
m
}