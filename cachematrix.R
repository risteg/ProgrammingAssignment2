## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    
    x1 <- matrix()
    set <- function(y) {
        x <<- y
        x1 <<- matrix()
    }
    get <- function() x
    setinv <- function(solve) x1 <<- solve
    getinv <- function() x1
    list(set = set, get = get,
    setinv = setinv,
    getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
    x1 <- x$getinv()
    if(!is.na(x1)) {
        message("getting cached data")
        return(x1)
    }
    data <- x$get()
    x1 <- solve(data, ...)
    x$setinv(x1)
    x1
    
    
        ## Return a matrix that is the inverse of 'x'
}
