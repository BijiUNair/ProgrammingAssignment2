## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        Inverser <- NULL
        ##Function to set the Matrix
        SetMatrix <- function(MatrixA) {
                x <<- MatrixA
                Inverser <<- NULL
        }
        ##Function to get the Matrix
        GetMatrix <- function() x
        ##Function to get the Inverse
        GetInverse <- function() Inverser
        ##Function to set the inverse
        SetInverse <- function(Answer){
                Inverser <<- Answer 
        } 
        # Output
        list(SetMatrix = SetMatrix ,
             GetMatrix = GetMatrix ,
             GetInverse = GetInverse ,
             SetInverse = SetInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Checking if the Inverse is already found or not
        Inverse <- x$GetInverse()
        if(is.matrix(Inverse)){
                
                message("Getting the Cached inverse")
                ## Output
                return(Inverse)
        }
        ## Finding the solution if it is not found already
        Inverse = solve(x$GetMatrix())
        ## Setting th inverse in Cache
        x$SetInverse(Inverse)
        ## Output
        return(Inverse)
        
}
