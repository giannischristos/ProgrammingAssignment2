## The following function creates a list of functions that
## set and cache the matrix to be inversed. In specific, these functions:
## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inversed matrix
## 4.get the value of the inversed matrix

makeCacheMatrix <- function(x = matrix()) {
      inverse <<- NULL
      #set <-function(y){
      #      x <<- y
      #      inverse <<-NULL
      #}      
      get <- function() {
            x
      }
      setinverse <- function(InverseMatrix) {
            inverse <<-InverseMatrix
      }
      getinverse <- function() {
            inverse
      }
      list( get = get, setinverse = setinverse, getinverse = getinverse)
}


## the following function calculates the inverse of the matrix created with the above function
## First checks if the inverse matrix has been calculated. If not, it calculates the inverse
## and stores the value in variable
## "inverse" of the previous function Otherwise, it gets the inverse
## and skips the calculation. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      if (is.null(inverse)) {           # if inverse has not been calculated
            data<-x$get()               # get me the initial matrix
            inverse<-solve(data,...)    # inverse via "solve()" function
            x$setinverse(inverse)       # assign in variable "inverse" the inversed matrix
      } else {
            
            message("getting cached inverse matrix")
      }
      
      inverse                     #returns the cached result
}
