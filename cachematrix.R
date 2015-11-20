## Both functions below (makeCacheMatrix and cacheSolve) create a 2x2 matrix with random numbers,
## and calculates their respective inverse matrix. cacheSolve compares the first and second matrix
## and follows if/else to determine which inverse matrix to print. 

## makeCacheMatrix creates a 2x2 matrix with random numbers, caches the matrix, 
## computes the inverse matrix, and caches the inverse matrix. Both cached matrices are then printed.

makeCacheMatrix <- function(x = matrix()) {
	x <- matrix(rnorm(10), nrow = 2, ncol = 2)
	CachedMatrix <<- x
	y <- solve(x)
	CachedInverseMatrix <<- y	
	print(CachedMatrix)
	print(CachedInverseMatrix)
}	

## cacheSolve creates a 2x2 matrix with random numbers and compares it with the already
## cached matrix from makeCacheMatrix. If the matrices are the same, then the cached inverse matrix
## is called and printed. If the matrices are different, then the new inverse matrix is calculated
## from the new matrix, cached, and printed.

cacheSolve <- function(x = matrix()) {
        x <- matrix(rnorm(10), nrow = 2, ncol = 2)
		y <- identical(x, CachedMatrix)
		if (y == TRUE){
		z <- CachedInverseMatrix		
		print(z)
		}
		else {
		w <- solve(x)
		CachedInverseMatrix <<- w		
		print(CachedInverseMatrix)
		}		
}
