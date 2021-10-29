#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import bs4Dash
#' @noRd
app_ui <- function(request) {

  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic

    # https://rinterface.github.io/bs4Dash/articles/bs4Intro.html
    bs4Dash::dashboardPage(
      title = "Viscoop",
      dark = TRUE,
      scrollToTop = TRUE,
      #preloader = list(html = tagList(waiter::spin_1(), "Carregando ..."), color = "#3c8dbc"),
      bs4Dash::dashboardHeader(
        "Viscoop - Visualização de dados de Cooperativas",
        tags$style(".navbar-gray-dark {
                                 background-color: #6c07ff;
                               }
                               .navbar-white {
                                 background-color: #ff8307;
                               }")
      ),
      bs4Dash::dashboardSidebar(
        title = "Sidebar",
        bs4Dash::sidebarMenu(
          bs4Dash::menuItem(
            "Home",
            tabName = "home",
            icon = icon("home")
          ),
          bs4Dash::menuItem(
            "Receita Federal Brasileira",
            tabName = "rfb",
            icon = shiny::icon("angle-double-right")
          ),
          bs4Dash::menuItem(
            "BACEN",
            tabName = "bacen",
            icon = shiny::icon("angle-double-right"),
            bs4Dash::menuSubItem(
              "Balanço",
              tabName = "balancocoopcred",
              icon = shiny::icon("angle-double-right")
            ),
            bs4Dash::menuSubItem(
              "Estrutura de Governança",
              tabName = "estruturagov",
              icon = shiny::icon("angle-double-right")
            )
          ),
          bs4Dash::menuItem(
            "RAIS",
            tabName = "rais",
            icon = shiny::icon("angle-double-right")
          ),
          bs4Dash::menuItem(
            "RICO",
            tabName = "rico",
            icon = shiny::icon("angle-double-right")
          ),
          bs4Dash::menuItem(
            "FOCCO",
            tabName = "focco",
            icon = shiny::icon("angle-double-right")
          ),
          bs4Dash::menuItem(
            "Sobre",
            tabName = "sobre",
            icon = shiny::icon("angle-double-right")
          ),
          bs4Dash::menuItem(
            "Como Colaborar",
            tabName = "comocolaborar",
            icon = shiny::icon("angle-double-right")
          )
        )
      ),
      bs4Dash::dashboardBody(
        bs4Dash::tabItems(
          bs4Dash::tabItem(tabName = "home", mod_home_ui("home_ui_1")),
          bs4Dash::tabItem(tabName = "rfb", mod_rfb_ui("rfb_ui_1")),
          bs4Dash::tabItem(tabName = "bacen",mod_bacen_ui("bacen_ui_1")),
          bs4Dash::tabItem(tabName = "balancocoopcred",
                           mod_balanco_ui("balanco_ui_1")
          ),
          bs4Dash::tabItem(tabName = "estruturagov",
            mod_estruturagov_ui("estruturagov_ui_1")
          ),
          bs4Dash::tabItem(tabName = "rais", mod_rais_ui("rais_ui_1")),
          bs4Dash::tabItem(tabName = "rico", mod_rico_ui("rico_ui_1")),
          bs4Dash::tabItem(tabName = "focco", mod_focco_ui("focco_ui_1")),
          bs4Dash::tabItem(tabName = "sobre", mod_sobre_ui("sobre_ui_1")),
          bs4Dash::tabItem(tabName = "comocolaborar",
                           mod_comocolaborar_ui("comocolaborar_ui_1")
          )
        )
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www", app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "Viscoop"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
