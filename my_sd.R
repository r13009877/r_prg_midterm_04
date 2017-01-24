# Create a function:my.sd()
my.sd <- function(input_vec){
  x_bar <-mean(input_vec) 
    n_minus_one <- length(input_vec)-1
      summation <- 0
      for(x_i in input_vec){
        summation <- summation+(x_i-x_bar)^2
      }
      return(sqrt(summation*1/n_minus_one))
}