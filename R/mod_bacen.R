#' bacen UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_bacen_ui <- function(id){
  ns <- NS(id)
  tagList(
    print("Em breve.") # ns() chama o name space
  )


}

#' bacen Server Functions
#'
#' @noRd
mod_bacen_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_bacen_ui("bacen_ui_1")

## To be copied in the server
# mod_bacen_server("bacen_ui_1")
