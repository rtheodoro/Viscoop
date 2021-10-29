#' focco UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_focco_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' focco Server Functions
#'
#' @noRd 
mod_focco_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_focco_ui("focco_ui_1")
    
## To be copied in the server
# mod_focco_server("focco_ui_1")
