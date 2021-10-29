#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  mod_home_server("home_ui_1")
  mod_rfb_server("rfb_ui_1")
  mod_rfb_empresa_server("rfb_empresa_ui_1")
  mod_rfb_socios_server("rfb_socios_ui_1")
  mod_rfb_estabelecimento_server("rfb_estabelecimento_ui_1")
  mod_bacen_server("bacen_ui_1")
  mod_balanco_server("balanco_ui_1")
  mod_estruturagov_server("estruturagov_ui_1")
  mod_rais_server("rais_ui_1")
  mod_rico_server("rico_ui_1")
  mod_focco_server("focco_ui_1")
  mod_comocolaborar_server("comocolaborar_ui_1")
  mod_sobre_server("sobre_ui_1")

}
