#' balancocoopcre UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @import DT
mod_balanco_ui <- function(id){
  ns <- NS(id)

  url_bacen_balanco <- a("Bacen", href="https://www.bcb.gov.br/acessoinformacao/legado?url=https:%2F%2Fwww4.bcb.gov.br%2Ffis%2Fcosif%2Fbalancetes.asp")



  mainPanel(
    fluidPage(h1("Dados do",strong("Banco Central do Brasil - Bacen"))),
    p("Estes dados foram disponibilizados pelo", url_bacen_balanco, "em 04/2021"),
    br(),
    fluidRow(
      column(width = 12,
             mainPanel(
               DT::dataTableOutput(ns("tablecars"))
             )
      )
    )
  )

}

#' balancocoopcre Server Functions
#'
#' @noRd
mod_balanco_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

    output$tablecars <- DT::renderDataTable(

    DT::datatable(mtcars)

    )


  })
}

## To be copied in the UI
# mod_balanco_ui("balanco_ui_1")

## To be copied in the server
# mod_balanco_server("balanco_ui_1")
