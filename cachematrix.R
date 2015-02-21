## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# create a matrix
makeCacheMatrix <- function(x = matrix()) {
        #init im to NULL (empty it)
        im <- NULL

        #set <- function(y) {
                #x <<- y
                #im <<- NULL
        #}
        
        #This function returns entered matrix
        get <- function() x
        
        #This function sets inverse matrix 
        setim <- function(InverseM) im <<- InverseM 
        
        #This function gets inverse matrix
        getim <- function() im
        
        #Put functions into a list
        list(get = get,
             setim = setim,
             getim = getim)     
}


## Write a short comment describing this function
# calc inverse matrix of x. Get it from cache if it exists
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #get inverse matrix from cache
        im <- x$getim()

        #return inverse matrix from cache if it exists
        if(!is.null(im)) {
                message("getting cached data")
                return(im)
        }
        
        #following code will only be executed if inverse matrix is not in cache
        #get matrix x
        data <- x$get()
        
        #calc inverse matrix
        im <- solve(data)
        
        #set inverse matrix
        x$setim(im)
        
        #print inverse matrix
        im
}

