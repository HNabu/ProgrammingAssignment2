## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## For this function, the input x is a matrix
## "i" is for the Inverse value and it is set as NULL

makeCacheMatrix <- function(x = matrix()) { 
  i <- NULL
  set <- function(y){
  x <<- y
  i <<- NULL
}
get <- function() x
set_inverse <- function(solveMatrix) i <<- solveMatrix
get_inverse <- function() i
list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)

}


## Write a short comment describing this function
##For this fuction, i returned the matrix i which gives the inverse of x
cacheSolve <- function(x, ...) {
  i <- x$get_inverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$set_inverse(i)
  i      
}

