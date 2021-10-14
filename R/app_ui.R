#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic

    # https://rinterface.github.io/bs4Dash/articles/bs4Intro.html
    bs4Dash::dashboardPage( title = "Viscoop",
      dark = TRUE, scrollToTop = TRUE,
      # preloader = list(html = tagList(waiter::spin_1(), "Carregando ..."), color = "#3c8dbc"),
      bs4Dash::dashboardHeader("Viscoop"),
      bs4Dash::dashboardSidebar(title = "Sidebar",
                                bs4Dash::sidebarMenu(
                                  bs4Dash::menuItem(
                                    "Home",
                                    tabName = "home"
                                  ),
                                  bs4Dash::menuItem(
                                    "Receita Federal Brasileira",
                                    tabName = "RFB"
                                  )
                                )
      ),
      bs4Dash::bs4DashBody(
        bs4Dash::tabItems(
          bs4Dash::tabItem(
            tabName = "home",
            "Bem-vind@!"
          ),
          bs4Dash::tabItem(
            tabName = "RFB",
            mod_rfb_ui("rfb_ui_1")
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
golem_add_external_resources <- function(){

  add_resource_path(
    'www', app_sys('app/www')
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'Viscoop'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}

