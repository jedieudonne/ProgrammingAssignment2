## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
var1 <- NULL
set <- function(y) {
x <<- y
var1 <<- NULL
}
get <- function() x
setinverse<- function(inverse) var1 <<-inverse
getinverse <- function() var1
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
