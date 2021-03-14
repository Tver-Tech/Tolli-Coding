# Variables

here <- here::here() ## set here file path
current_year <- lubridate::year(Sys.Date()) ## sys year 

# Basic Functions

load_libraries <- function(){
  pacman::p_load(tidyverse, pacman, glue, pander, lubridate, knitr, rmarkdown) ## Load Packages
  opts_chunk$set(results = 'asis', echo = FALSE, message = FALSE, warning = FALSE) ## Chunk Displays
}

print_newline <- function(){pander::pander("\n")}
print_h1 <- function(h1){pander::pander(glue::glue("# {h1} \n\n\n"))}
print_h2 <- function(h2){pander::pander(glue::glue("## {h2} \n\n\n"))}
print_h3 <- function(h3){pander::pander(glue::glue("### {h3} \n\n\n"))}
print_h4 <- function(h4){pander::pander(glue::glue("#### {h4} \n\n\n"))}
print_h5 <- function(h5){pander::pander(glue::glue("##### {h5} \n\n\n"))}
print_h6 <- function(h6){pander::pander(glue::glue("###### {h6} \n\n\n"))}
print_pic <- function(img){pander::pander(glue::glue("![]({img}) \n\n\n"))}
print_img <- function(pic){pander::pander(glue::glue('<img src = {pic} alt = "Picture Error"> \n\n\n'))}
print_strong <- function(p){pander::pander(glue::glue('<strong>{p}</strong>'))} 
pagebreak <- function(){pander::pander('<hr /><div style="clear:both;"></div>')}

# User Stats

user_stats <- function(user){
  pander::pander(glue::glue('<h2>User Stats</h2><a href="https://github.com/anuraghazra/github-readme-stats" align="center"><img style="max-width:100%;" height="160" align="center"
  src="https://github-readme-stats.vercel.app/api/top-langs/?username={user}&layout=compact&theme=gruvbox" /></a> \n\n\n'))
}