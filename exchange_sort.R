#Creat a function <- exchange.sort.max()•¸
exchange.sort.max <- function(input_vector) {
  input_vector_clone <- input_vector
  vector_length <- length(input_vector)
  for (i in 1:(vector_length - 1)) {
    for (j in (i + 1):vector_length) {
      if (input_vector[i] > input_vector[j]) {
        temp <- input_vector[i]
        input_vector[i] <- input_vector[j]
        input_vector[j] <- temp
      }
    }
  }
  return(input_vector)
}

#Creat a function <- exchange.sort.min()•¸
exchange.sort.min <- function(input_vector) {
  input_vector_clone <- input_vector
  vector_length <- length(input_vector)
  for (i in 1:(vector_length - 1)) {
    for (j in (i + 1):vector_length) {
      if (input_vector[i] < input_vector[j]) {
        temp <- input_vector[i]
        input_vector[i] <- input_vector[j]
        input_vector[j] <- temp
      }
    }
  }
  return(input_vector)
}

#Creat a function <- exchange.sort
exchange.sort <- function(input_vector,reverse = FALSE){
  max <- exchange.sort.max(input_vector)
  min <- exchange.sort.min(input_vector)
  if (reverse == FALSE) {
    return(max)
  } else {
    return(min)
  }
}