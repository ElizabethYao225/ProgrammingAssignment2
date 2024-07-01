## Put comments here that give an overall description of what your
## functions do:
## The following functions are designed to caching the inverse of a matrix using a process similar to caching the mean of a vector

## Write a short comment describing this function:
## this is the first of two functions
## This function has the ability to cache its inverse by creating a special "matrix" object with this ability

makeCacheMatrix <- function(x = matrix()) {
  flip <- NULL  
  set <- function(y) {
    x <<- y 
    flip <- NULL
  }
  get <- function() x
  setinv <- function(inverse) flip <<- inverse
  getinv <- function() flip 
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}



## Write a short comment describing this function:
## This is the second of the set of functions
## This function has the ability to take the "matrix" object from the above function and calculate its inverse
## In addition, the function considers the possibility that the matrix could remain unchanged after calculating its inverse
## If this is the case, the function return the inverse from the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  flip <- z$getinv()
  if(!is.null(flip)) {
    message("getting cached data")
    return(flip)
  }
  data <- x$getsetinv(flip)
  flip
}