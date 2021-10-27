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
  mod_bacen_server("bacen_ui_1")
  mod_balancocoopcre_server("balancocoopcre_ui_1")
  mod_estrutgovcoopcred_server("estrutgovcoopcred_ui_1")
  mod_rais_server("rais_ui_1")
  mod_comocolaborar_server("comocolaborar_ui_1")
  mod_sobre_server("sobre_ui_1")

}
