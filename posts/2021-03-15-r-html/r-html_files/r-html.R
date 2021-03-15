print_newline <- function(){pander::pander("\n")}
pagebreak <- function(){pander::pander('<hr /><div style="clear:both;"></div>')}
print_strong <- function(p){pander::pander(glue::glue('<strong>{p}</strong>'))} 
print_bold <- function(p){pander::pander(glue::glue('<b>{p}</b>'))} 
print_italic <- function(p){pander::pander(glue::glue('<i>{p}</i>'))} 
print_em <- function(p){pander::pander(glue::glue('<em>{p}</em>'))}     
print_mark <- function(p){pander::pander(glue::glue('<mark>{p}</mark>'))} 
print_small <- function(p){pander::pander(glue::glue('<small>{p}</small>'))} 
print_del <- function(p){pander::pander(glue::glue('<del>{p}</del>'))} 
print_ins <- function(p){pander::pander(glue::glue('<ins>{p}</ins>'))} 
print_sub <- function(p){pander::pander(glue::glue('<sub>{p}</sub>'))} 
print_sup <- function(p){pander::pander(glue::glue('<sup>{p}</sup>'))} 
javascript_src <- function(source){pander::pander(glue::glue('<script src={source}></script>'))}
javascript_in <- function(fun){pander::pander(glue::glue('<script>{fun}</script>'))} 
javascript_no <- funtion(fun, err = "JavaScript not supported"){pander::pander(glue::glue('<script>{fun}</script><noscript>{err}</noscript>'))}
css_src <- function(source){pander::pander(glue::glue('<link rel="stylesheet" href={source}>'))}
css_in <- function(style){pander::pander(glue::glue('<style>{style}</style>'))}
add_audio <- function(source){pander::pander(glue::glue('<audio controls><source src={source} type="audio/mpeg">Audio element not supported.</audio>'))}
add_video <- function(source){pander::pander(glue::glue('<video controls><source src={source} type="audio/mp4">Video element not supported.</video>'))}
add_youtube <- function(url, width = 420, height = 345){pander::pander(glue::glue('<iframe src={url} width="{width}" height="{height}"></iframe>'))}