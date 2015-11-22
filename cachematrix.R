## With this function a cloussure environment is created, caching the value of a matrix an doing over this one special object: a inverse of matrix
## Whith this will be able to access to values from diferents environment to creation environment. Itself this function don`t make calculations, but
## set function an get function enables the matrix can be called and changed by de next function cacheSolve

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
  x <<- y
  m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- mean
  getmatrix <- function() m
  list(set = set, get = get,
  setmatrix = setmatrix,
  getmatrix = getmatrix)
  }


## With this function, as well as computes the inverse of the matrix, will allow to be performed by de set function from current environmet
## using $get.

cacheSolve <- function(makeCacheMatrix, ...) {
   m <- x$getmatrix()
   if(!is.null(m)) {
     message("getting cached data")
     return(m)
   }
   matrix <- x$get()
   m <- solve(matrix, ...)
   x$setmatrix(m)
   m
}
