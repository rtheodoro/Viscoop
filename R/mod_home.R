#' home UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_home_ui <- function(id){
  ns <- NS(id)
  tagList(
    p("Bem-vinde ao ", strong("Viscoop")),
    p("Este projeto tem o objetivo de disponibilizar informações
      estatísticas sobre as diversas Cooperativas Brasileiras utilizando informações da Receita Federal, Banco Central do Brasil e
      RAIS.")

  )
}

#' home Server Functions
#'
#' @noRd
mod_home_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_home_ui("home_ui_1")

## To be copied in the server
# mod_home_server("home_ui_1")
