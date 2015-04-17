## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix This function creates a special "matrix" object that can cache its inverse.
## cacheSolve This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {


        inverse <- NULL # Set the inverse equal to NULL

        set <- function(y) {

            x <<- y  # Assign the argument to an object in an environment that is different than the current environment

           inverse <<- NULL # Reset the inverse to NULL so its clean the next time you redefine a matrix

        }

        get<-function() x # Return the matrix from the argument given

        setInverse <- function(solve) inverse <<- solve #override previous value and then assign the argument

        getInverse <- function() inverse ##returns the inverse

        list(set=set, get=get, setInverse=setInverse, getInverse=getInverse) ## Create a list of functions

}


cacheSolve <- function(x=matrix(), ...) {

    ## Return a matrix that is the inverse of 'x'

    inverse <- x$getInverse()    ## Store the input

    if(!is.null(m)){    ## If the cached matrix is not empty, tell people you are looking it up
        message("getting cached data")
        return(m) ## Return the cached solved matrix
    }

    matrix <- x$get()

    inverse <- solve(matrix, ...) ## Solve the cached matrix

    x$setmatrix(inverse) ## Set the inverse to the newly value

    inverse ## return the new inverse value

}
