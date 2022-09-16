# epaRShinyTemplate

<!-- badges: start -->
<!-- badges: end -->

The goal of epaRShinyTemplate is to supply users the EPA banner from the Easey Design System.

## Installation

First clone the repo and add an .npmrc file and add required lines with your token.
```
//npm.pkg.github.com/:_authToken=TOKEN
@us-epa-camd:registry=https://npm.pkg.github.com
```

Then in your terminal run `yarn install`

Run `yarn run webpack`

Switch out in your webpack.config.js the following

```
...
    entry: {
      'epaSlimHeader': path.join(__dirname, 'srcjs', 'epaSlimHeader.jsx')
    },
    output: {
        path: path.join(__dirname, 'inst/www/epaRShinyTemplate/epaSlimHeader'),
        filename: '[name].js'
    },
...
```

Run `yarn run webpack` again

Make sure [devtools](https://devtools.r-lib.org/) is installed. [usethis](https://usethis.r-lib.org/) may also be useful.

In the R Shiny counsole run

``` r
devtools::document()
devtools::load_all()
```

Check the package and build if there are no errors

``` r
devtools::check()
devtools::build()
```

You can then install

``` r
install.packages('/path/epaRShinyTemplate_0.0.1.tar.gz', repos=NULL)
```

#### In the works
Instructions for coming soon

``` r
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
