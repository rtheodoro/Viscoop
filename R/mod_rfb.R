#' rfb UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @importFrom DT renderDataTable
#'



mod_rfb_ui <- function(id) {
  ns <- NS(id)

  url_rfb_cnpj <- a("RFB", href="https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/cadastros/consultas/dados-publicos-cnpj")

  mainPanel(
    fluidPage(h1("Dados de CNPJ da",strong("Receita Federal Brasileira - RFB"))),
    p("Estes dados foram disponibilizados pela", url_rfb_cnpj, "em 09/2021"),
    br(),
    fluidRow(
      column(width = 12,
             mainPanel(
               DT::dataTableOutput(ns("tabela_receita"))
             )
      )
    )
  )



}

#' rfb Server Functions
#'
#' @noRd
mod_rfb_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns

   output$tabela_receita <- DT::renderDataTable(


     DT::datatable(mtcars)

   )



  })
}

## To be copied in the UI
# mod_rfb_ui("rfb_ui_1")

## To be copied in the server
# mod_rfb_server("rfb_ui_1")
