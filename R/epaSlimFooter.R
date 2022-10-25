#' epaSlimFooter Function
#'
#' Used in the UI functions of R Shiny apps
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @param inputId The id of the shiny object.
#' @param appVersion The application version
#' @param appPublished The application publish date
#'
#' @export
epaSlimFooter <- function(inputId, appVersion = "v0.0.0", appPublished = "local") {
  reactR::createReactShinyInput(
    inputId,
    "epaSlimFooter",
    htmltools::htmlDependency(
      name = "epaSlimFooter-input",
      version = "1.0.0",
      src = "www/epaRShinyTemplate",
      package = "epaRShinyTemplate",
      script = "main.js"
    ),
    default = 0,
    configuration = list(appVersion=appVersion,appPublished=appPublished),
    htmltools::tags$div
  )
}
