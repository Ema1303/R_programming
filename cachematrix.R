## Assignment: Caching the Inverse of a Matrix

# below, two functions are created:
# 1) makeCacheMatrix: creates a special "matrix" object that can cache its inverse
# 2) cacheSolve: computes the inverse of the special "matrix" 

# makeCacheMatrix sets an object that can cache the inverse of a matrix. In this solution, this object is called my_matrix. 
# A value to an object in an environment different from the current environment is assigned with '<<-'.
#The function returns a list containing functions to: 
## 1. set the matrix (set)
## 2. get the matrix (get)
## 3. set the inverse (setInv)
## 4. get the inverse (getInv)


makeCacheMatrix <- function(x = matrix()) {
  my_matrix <- NULL
  set <- function(y) {
    x <<- y # `<<-` is used to assign a value to an object in an environment different from the current environment.
    my_matrix <<- NULL
  }
  get <- function() x
  setInv <- function(inv) my_matrix <<- inv
  getInv <- function() my_matrix
  
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## cacheSolve function computes the inverse of the matrix returned by makeCacheMatrix by using 'solve'. 
# If the inverse matrix has already been calculated, then cacheSolve returns the inverse from the cache (and sends a message "getting cached data").
# Otherwise it calculates the inverse (by using solve()).

#we assume that the matrix supplied is always invertible

cacheSolve <- function(x, ...) {
  my_matrix <- x$getInv()
  if(!is.null(my_matrix)) {
    message("getting cached data")
    return(my_matrix)
  }
  data <- x$get()
  my_matrix <- solve(data, ...) # computes the inverse of the matrix
  x$setInv(my_matrix) # sets the value of the inverse in the cache via the setinv function.
  my_matrix
}

# I will test my functions now:
# > x = rbind(c(5, 3), c(3, 5))
# > my_matrix = makeCacheMatrix(x)
# > my_matrix$get()
#  [,1] [,2]
#[1,]    5    3
#[2,]    3    5

# In the first iteration there is no cached matrix
# > cacheSolve(my_matrix)
#   [,1]    [,2]
#[1,]  0.3125 -0.1875
#[2,] -0.1875  0.3125

# In the second run, I should receive a message "getting cached data". Let's see if it works.
# I called cacheSolve(my_matrix) once again and this is what I get:
# getting cached data
#[,1]    [,2]
#[1,]  0.3125 -0.1875
#[2,] -0.1875  0.3125

