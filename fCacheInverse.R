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
