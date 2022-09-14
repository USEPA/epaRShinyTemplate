# epaRShinyTemplate

<!-- badges: start -->
<!-- badges: end -->

The goal of epaRShinyTemplate is to supply users the EPA banner from the Easey Design System.

## Installation

You can install the development version of epaRShinyTemplate from [GitHub](https://github.com/USEPA/epaRShinyTemplate)

``` r
install.packages('/path/epaRShinyTemplate_0.0.1.tar.gz', repos=NULL)
# or
devtools::install_github("USEPA/epaRShinyTemplate")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(epaRShinyTemplate)
## basic example code
ui <- div(

  # EPA navigation component
  epaSlimHeader("epaNav",appEnvironment = "prod"),

  # App title ----
  titlePanel("Shiny Text"),
  
  # version and publish date component
  epaSlimFooter("epaFoot", appVersion = "v0.0.0", appPublished = "local")
  
)

server <- function(input, output, session) {

}

shinyApp(ui, server)

```
