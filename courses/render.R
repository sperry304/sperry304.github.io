library(tidyverse)
library(rmarkdown)

gcr_dir <- "/Users/skipperry/Documents/golf_course_rankings/"
web_dir <- "/Users/skipperry/Documents/sperry304.github.io/courses/"

test_course_list <- c("Pine Valley", "Cypress Point")

for (course in test_course_list) {
  course_of_interest <- course
  render(
    "/Users/skipperry/Documents/golf_course_rankings/single_course.Rmd", 
    output_file = str_c(web_dir, tolower(str_replace_all(course_of_interest, " ", "_")), ".html")
  )
}
