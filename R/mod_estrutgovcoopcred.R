#' estrutgovcoopcred UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_estrutgovcoopcred_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' estrutgovcoopcred Server Functions
#'
#' @noRd 
mod_estrutgovcoopcred_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_estrutgovcoopcred_ui("estrutgovcoopcred_ui_1")
    
## To be copied in the server
# mod_estrutgovcoopcred_server("estrutgovcoopcred_ui_1")
