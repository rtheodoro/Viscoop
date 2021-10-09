#' rfb UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_rfb_ui <- function(id){
  ns <- NS(id)
  tagList(
    leaflet::leafletOutput(ns("rfb")) #ns() chama o name space




  )
}

#' rfb Server Functions
#'
#' @noRd
mod_rfb_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_rfb_ui("rfb_ui_1")

## To be copied in the server
# mod_rfb_server("rfb_ui_1")
