## This file has two functions to deal with a time consuming 
## calculation : the matrix inversion. It will allow us to create a special matrix
## which can cache its inverse. The inverse will be compute only if it hasn't been
## before, otherwise it will just retrieve the result.

## This function creates a special "matrix" object that can cache its inverse.
## the matrix is really a list containing a function to
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function compute the inverse of the matrix if it hasn't been compute yet. 
## If it has already been compute it will retrieve the result without
## doing the computation.

cacheSolve <- function(x, ...) {   ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
