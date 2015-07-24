## The functions allows to make inversion of a matrix. If a matrix has never been inverted, the programm uses solve to inverte
## the matrix and put it in the cache. If the matrix as already been inverted, the programm finds the inverse in the cache and
## returns it without computing.

## makeCacheMatrix : this function creates a special array object that can cache the inverse of the matrix.

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


## cacheSolve : This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), this function retrieves the inverse from the cache. 

cacheSolve <- function(x, ...) {
m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
