#' epaSlimHeader Function
#'
#' Used in the UI functions of R Shiny apps
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
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
      src = "www/epaRShinyTemplate/epaSlimHeader",
      package = "epaRShinyTemplate",
      script = "epaSlimHeader.js"
    ),
    default = appEnvironment,
    configuration = list(),
    htmltools::tags$div
  )
}
