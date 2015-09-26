## These functions calculate and cache the inverse of a matrix
## The output of makeCacheMatrix() is the input for cacheSolve()

## makeCacheMatrix will:
## set the matrix
## get the matrix
## set the inverse
## get the inverse

makeCacheMatrix <- function(x = matrix()) {
      inverse <- NULL
      set <- function(y) {
            x <<- y
            inverse <<- NULL
      }
      get = function() x
      setinverse = function(inverse) inverse <<- inverse
      getinverse = funciton() inverse
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function will return the inverse of the matrix set by makeCacheMatrix() 
## The input for cacheSolve() is the output of makeCacheMatrix()
## If the inverse has not already been calculated, cacheSolve() will caculate it

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      inverse <- x$getinverse()
      # get the inverse if already calcuated...
      if (!is.null(inverse)){
            message("getting cached data")
            return(inverse)
      }
      # if not, calculate it now...
      data <- x$get()
      inverse <- solve(data)
      x$setinverse(inverse)
      return(inverse)
}
    
      
