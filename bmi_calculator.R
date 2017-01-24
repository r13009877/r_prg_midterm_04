# Create a function:bmi.calculator()
bmi.calculator <- function(w,h){
  h <- h/100
  return(w/h^2)
}

#Creat input
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

#Function call
heights_and_weights$bmi <- as.numeric(mapply(FUN = bmi.calculator,w=weights,h=heights)) 