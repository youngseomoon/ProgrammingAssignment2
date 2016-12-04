## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  #Set the value of matrix by using set <-function
  
  get <- function() x
  setInvere <- function(solveMatrix) inv <<- solveMatrix
  getInvers <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInvers = getInvers)
}

  #et the value of matrix by using get <- function
  #set and et the value of the inverse using getInverse <- function and setInverse <- function

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message ("getting cached data") 
    return(inv)
    
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse (inv)
  inv
}

   #the inverse of the matrix created with inv <- solve 
   # cacheSolve - copmpares the inverse of matrix. 
   # then matrix returns by inv to Null. if the inverse is already caluclated then there is no change
   # or it solves and return the inverse 
