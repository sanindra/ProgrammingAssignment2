## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  #initialize the cache with NULL
  ch <- NULL
  
  #store a matrix
  setMatrix <-function(nVal){
    x<<- nVal
    ch<<- NULL
  }
  
  getMatrix <-function(){
    x
  }
  
  cacheInverse <-function(solve){
    ch<<-solve
  }
  getInverse <-function(){
    ch
  }
  
  # return the list of all functions
  list(setMatrix = setMatrix, getMatrix =getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  # get the cached val
  inv <- y$getInverse()
  #Chk if the cached val exists
  if(!is.null(inv))
  {
    return (inv)    
  }
  
  # if inv is null then find the inverse and store it
  
  data <- y$getMatrix()
  inv <- solve(data)
  y$cacheInverse(inv)
  
  inv
}
