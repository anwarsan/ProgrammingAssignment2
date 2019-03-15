## Put comments here that give an overall description of what your
## functions do
## A pair of functions that cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL                 ##cache inverse of matrix
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x        ##get/set for matrix inverse
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  
##return list of functions for matrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
   inv <- x$getInverse() 
  if(!is.null(inv)){
    message("getting cached data") 
    return(inv)
  }
  data <- x$get()       ##compute inverse of matrix
  inv <- solve(data)
  x$setInverse(inv)     ##chace inverse
  return(inv)           ##return inverse of matrix
}

# Caching Inverse of a Matrix
# Example:
# m <- matrix(c(1, 6, 3, 1), nrow = 2, ncol = 2, byrow = TRUE)
# m2 <- makeCacheMatrix(m)
# cacheSolve(m2)
#           [,1]        [,2]
# [1,] -0.05882353  0.35294118
# [2,]  0.17647059 -0.05882353
# inverse is chaced


















