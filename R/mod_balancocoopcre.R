#' balancocoopcre UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_balancocoopcre_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' balancocoopcre Server Functions
#'
#' @noRd 
mod_balancocoopcre_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_balancocoopcre_ui("balancocoopcre_ui_1")
    
## To be copied in the server
# mod_balancocoopcre_server("balancocoopcre_ui_1")
