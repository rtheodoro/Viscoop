#' comocolaborar UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_comocolaborar_ui <- function(id){
  ns <- NS(id)

    mainPanel(
      fluidPage(h1("Como ",strong("colaborar"), " com o projeto.")),
      p("Existem várias formas de colaborar com a melhora deste aplicativo. Elas são:"),
    p(strong("1) Com código:"),"Se você entende de programação, pode acessar o github do projeto e contribuir com os ajustes que puder."),
    p(strong("2) Com base de dados:"), "Se você possui alguma base de dados, você pode contribuir enviando-a para que seja disponibilizada a todos."),
    p(strong("3) Com dinheiro:"), "Para que o servidor suporte mais aplicações, é necessário pagar por um plano melhor. Para contribuir com isso, você pode enviar um PIX para rtheodoro@outlook.com"),
    p(strong("4) Com divulgação!"), "Compartilhe este projeto em suas redes sociais e com pessoas que se interessam pelo tema!")
      )



}

#' comocolaborar Server Functions
#'
#' @noRd
mod_comocolaborar_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_comocolaborar_ui("comocolaborar_ui_1")

## To be copied in the server
# mod_comocolaborar_server("comocolaborar_ui_1")
