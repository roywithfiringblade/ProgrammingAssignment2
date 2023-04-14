## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  res<-NULL
  set<-function(y){
    x<<-y
    res<<-NULL
  }
  get<-function() x
  setinv<-function(inv) res<<-inv
  getinv<-function() res
  list(set=set,get=get,setinv=setinv,getinv=getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if (!is.null(inv)){
    return(inv)
  }
  data<-x$get()
  inv<-solve(data)
  x$setinv(inv)
  
  inv
  
}
