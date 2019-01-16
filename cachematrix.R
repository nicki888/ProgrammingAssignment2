## Put comments here that give an overall description of what your
## functions do

## The function creates an object in R that stores a matrix and it's inverse
## The object has four main functions which allow access to the data objects values and to
## assign values to the data objects
##
## Finally the functions are assigned as elements in a list

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        m <<- NULL
        x <<- y
        
    }
    get <- function() x
    
    setmatrix <- function(mm) m <<- mm
    getmatrix <- function() m
    
    list(set = set, get = get, setmatrix=setmatrix, getmatrix=getmatrix)
    
}


## This function to get and assign the inverse of the matrix (passed in the function)
## from the makeCachMatrix object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m
}
