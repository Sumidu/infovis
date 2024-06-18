# helper functions

convert_fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

convert_kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

fahr_to_celsius <- function(temp) {
  temp_k <- convert_fahr_to_kelvin(temp)
  result <- convert_kelvin_to_celsius(temp_k)
  return(result)
}


fahr_to_celsius(c(0,4))
