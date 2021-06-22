## input is a square matrix


## solves matrix
makeCacheMatrix <- function(x = matrix()) {
  S <- NULL
  set <- function(y) {
    x <<- y
    S <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) S <<- solve
  getsolve <- function() S
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## function caches solved matrix
cacheSolve <- function(x, ...) {
  S <- x$getsolve()
  if(!is.null(S)) {
    message("Getting solved matrix")
    return(S)
  }
  dat <- x$get()
  S <- solve(dat, ...)
  x$setsolve(S)
  S
}

