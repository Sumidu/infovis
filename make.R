# This file runs all test documents


library(stringr)
# run test files
base_path <- "."
files <- dir(path = base_path, pattern = "*.Rmd")

# remove the readme and template
files <- files[!files %in% c("README.Rmd", "_template.Rmd")]

output <- str_replace(files, ".Rmd", ".html")
output <- paste0("output/", output)


for (i in 1:length(files)) {
  message(paste0("Rendering document: ", files[i]))
  rmarkdown::render(input = paste0(base_path, "/", files[i]))
}

rmarkdown::render(input = paste0(base_path, "/index.Rmd"))
