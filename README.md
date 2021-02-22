# R

test_matrix <- matrix( c(5, 1, 0,3,-1, 2, 4, 0,-1), nrow=3, byrow=TRUE)

test_matrix_cached = makeCacheMatrix(test_matrix)

cacheSolve(test_matrix_cached)

