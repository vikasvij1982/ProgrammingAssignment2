## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrix_inverse <- NULL
  setmatrix <- function(y) {
    x <<- y
    matrix_inverse <<- NULL
  }
  getmatrix <- function() x
  setinverse <- function(inverse) matrix_inverse <<- inverse
  getinverse <- function() matrix_inverse
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cachedInverse <- x$getinverse()
  if(!is.null(cachedInverse)) {
    message("getting cached data")
    return(cachedInverse)
  }
  data <- x$getmatrix()
  cachedInverse <- solve(data)
  x$setinverse(cachedInverse)
  cachedInverse

}
