## Put comments here that give an overall description of what your
## functions do
#The function below is used to cache the inverse of a matrix


## Write a short comment describing this function
#makeCacheMatrix creates a special "matrix", which contains a function to

#set the value of the cacheMatrix
#get the value of the cacheMatrix
#set the value of the cacheSolve
#get the value of the cacheSolve

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setSolve <- function(Solve) m <<- Solve
getSolve <- function() m
list(set = set, get = get,
     setSolve = setSolve,
     getSolve = getSolve)
}


## Write a short comment describing this function
#It calculates the inverse of the special "matrix" created with the above function.
#It first checks to see if the inverse has already been calculated.
#if so, it gets the inverse from the cache and skips the computattion.
#Otherwise, it calculates the inverse of the data and sets the value of the
#inverse in the cache via the setSolve function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- Solve(data, ...)
  x$setSolve(m)
  m
}
