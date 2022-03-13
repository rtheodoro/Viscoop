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
    p("Este projeto pretende disponibilizar informações sobre as
      diversas", strong("cooperativas brasileiras"), "utilizando informações do",
      tags$a(href="https://www.bcb.gov.br/", "Banco Central do Brasil - Bacen",  target="_blank"),
      ", da", tags$a(href="http://pdet.mte.gov.br/microdados-rais-e-caged?_ga=2.76313365.1278749075.1612490536-1284000383.1612490536", "Relação Anual de Informações Sociais - RAIS",  target="_blank"),
      ", da", tags$a(href="https://www.gov.br/receitafederal/pt-br/assuntos/orientacao-tributaria/cadastros/consultas/dados-publicos-cnpj", "Receita Federal do Brasil - RFB",  target="_blank"),
      "e outros."),
    p("Também será feito o cruzamento dos dados e algumas análises estatísticas."),
    p("Mais informações sobre as bases e estatísticas estão disponíveis nas abas à esquerda."),
    p("Para estimular o aprendizado e garantir a transparência das informações,
      este projeto está disponível inteiramente no ", tags$a(href="https://github.com/rtheodoro/Viscoop", "GitHub",  target="_blank"),
      ". Isso possibilita a conferência de nossos cálculos, adaptação para outros projetos e que os
      interessados possam utilizar o código onde desejar (desde que citada a
     fonte, conforme", tags$a(href="https://github.com/rtheodoro/Viscoop/blob/main/LICENSE.md", "licença CC BY 4.0",  target="_blank"),")"),
    p("O projeto está bem no ínicio e toda contribuição será bem-vinda.")
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
