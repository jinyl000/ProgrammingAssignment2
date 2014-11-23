## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## Initialize the inverse of the matrix
    i <- NULL
    ## Define set function for setting matrix itself
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    ## Define get function to get the matrix
    get <- function() {
        x
    }
    ## Define setInverse function to assign a new Inverse of the matrix onto Cache
    setInverse <- function(inverse) {
        i <<- inverse
    }
    ## Define getInverse function to get the inverse of the matrxi from Cache
    getInverse <- function() {
        i
    }
    ## Return a list of set/get functions
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    ## Search the inverse of the matrix in the Cache
    i <- x$getInverse()
    ## If inverse of matrix is found in cache, return it
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    
    ## If it is not found in cache, calculate and save it in Cache 
    data <- x$get()
    i <- solve(data)
    x$setInverse(i)
    i
}

