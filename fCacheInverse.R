# function makeCacheMatrix wraps a matrix into a cacheable interface
# this implementation allows for caching of the inverse of a matrix
# example: test_matrix <- matrix( c(5, 1, 0,3,-1, 2, 4, 0,-1), nrow=3, byrow=TRUE)
# test_matrix_cached <- makeCacheMatrix(test_matrix)
makeCacheMatrix <- function(x = matrix()) {
        matInv <- NULL
        set <- function(y) {
                x <<- y
                matInv <<- NULL
        }
        get <- function() x
        setMatInv <- function(inv) matInv <<- inv
        getMatInv <- function() matInv
        list(set = set, get = get,
             setMatInv = setMatInv,
             getMatInv = getMatInv)
}
# function cacheSolve checks if an answer for inverse is already available
# it returns already solved inverse if available else it computes it
# example: test_matrix <- matrix( c(5, 1, 0,3,-1, 2, 4, 0,-1), nrow=3, byrow=TRUE)
# test_matrix_cached <- makeCacheMatrix(test_matrix)
# cacheSolve(test_matrix_cached)
cacheSolve <- function(x, ...) {
        mInvCached <- x$getMatInv()
        if(!is.null(mInvCached)) {
                message("returning cached data")
                return(mInvCached)
        }
        data <- x$get()
        mInv <- solve(data, ...)
        x$setMatInv(mInv)
        mInv
}
