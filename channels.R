checkerboard <- function(setup_matrix, scale = "x2000"){
  x_start <- 1240
  y_start <- 840
  x_width <- 300
  y_height <- 300
  channels <- magick::image_read(here::here("figs/channels.png"), density = 300)
  dots <- magick::image_read(here::here("figs/dots.png"), density = 300)

  img <- channels
  for(i in 1:5){
    for(j in 1:3){
      offset_str <- paste0("+", x_start + ((j-1) * x_width), "+", y_start + ((i-1) *y_height))
      if( setup_matrix[i,j] == 1){
        #print(offset_str)
        img <- magick::image_composite(img, dots, offset = offset_str)
      }
    }
  }

  img %>% magick::image_scale(scale)
}

