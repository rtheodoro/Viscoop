#' rfb_empresa UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_rfb_empresa_ui <- function(id){
  ns <- NS(id)
  ns <- NS(id)

  url_rfb_cnpj <- a("RFB", href="https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/cadastros/consultas/dados-publicos-cnpj")

  load(file = "data/rfb_cnpj_092021.rda")


  mainPanel(
    fluidPage(h1("Dados de CNPJ da", strong("Receita Federal Brasileira - RFB"))),
    p("Estes dados foram disponibilizados pela", url_rfb_cnpj, "em 10/2021"),
    br(),
    fluidRow(
      column(width = 12,
             mainPanel(
               tags$head(tags$style("div.dataTables_scrollHead span {color: black;}")),
               DT::dataTableOutput(ns("tabela_cnpj_092021"))
             )
      )
    )
  )



}

#' rfb_empresa Server Functions
#'
#' @noRd
mod_rfb_empresa_server <- function(id){
  moduleServer( id, function(input, output, session){

    ns <- session$ns

    output$tabela_cnpj_092021 <- DT::renderDataTable(


      DT::datatable(
        rfb_cnpj_092021,
        options = list(paging = TRUE, ## paginate the output
                       digits = 12,
                       pageLength = 10,  ## number of rows to output for each page
                       scrollX = TRUE,   ## enable scrolling on X axis
                       scrollY = TRUE,   ## enable scrolling on Y axis
                       width = "50%", ## use smart column width handling
                       server = FALSE,   ## use client-side processing
                       dom = 'Bfrtip',
                       buttons = c('csv', 'excel')
        ),
        extensions = 'Buttons',
        selection = 'single', ## enable selection of a single row
        filter = 'top',        ## include column filters at the top
        style = "bootstrap",
        rownames = FALSE                ## don't show row numbers/names
      )
      # |>
      #   DT::formatStyle(
      #     columns = colnames(rfb_cnpj_092021),
      #     backgroundColor = '#282828',
      #     color = "white")
    )



  })
}

## To be copied in the UI
# mod_rfb_empresa_ui("rfb_empresa_ui_1")

## To be copied in the server
# mod_rfb_empresa_server("rfb_empresa_ui_1")
