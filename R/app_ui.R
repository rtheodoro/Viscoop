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
    fluidPage(
      theme = shinythemes::shinytheme("superhero"),
      h1("Viscoop---- Visualização de Dados Cooperativos"),
      bs4Dash::dashboardPage(
        bs4Dash::dashboardHeader(),
        bs4Dash::dashboardSidebar(),
        bs4Dash::dashboardBody()
      ),
      navbarPage(
        title = "Informações",
        tabPanel(title = "Painel 1"),
        tabPanel(title = "Painel 2"),
        tabPanel(title = "Painel 3"),
        navbarMenu(
          title = "Mais opções",
          tabPanel(title = "Item 1"),
          tabPanel(title = "Item 2"),
          tabPanel(title = "Item 3")
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

