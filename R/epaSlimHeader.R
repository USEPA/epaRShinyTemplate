#' epaSlimHeader Function
#'
#' Used in the UI functions of R Shiny apps
#'
#' @import reactR
#' @import htmltools
#'
#' @param inputId The id of the shiny object.
#' @param appEnvironment The application environment. Supplying 'prod' will omit dev/testing banner.
#'
#' @export
epaSlimHeader <- function(inputId, appEnvironment = "dev") {
  reactR::createReactShinyInput(
    inputId,
    "epaSlimHeader",
    htmltools::htmlDependency(
      name = "epaSlimHeader-input",
      version = "1.0.0",
      src = "www/epaRShinyTemplate",
      package = "epaRShinyTemplate",
      script = "main.js"
    ),
    default = appEnvironment,
    configuration = list(),
    htmltools::tags$div
  )
}
