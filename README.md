# epaRShinyTemplate

<!-- badges: start -->
<!-- badges: end -->

The goal of epaRShinyTemplate is to supply users the EPA banner from the [EASEY Design System](https://github.com/US-EPA-CAMD/easey-design-system).

## Installation

To install this package from R Studio:

``` r
install_github("https://github.com/USEPA/epaRShinyTemplate" , auth_token = "personal_access_token")
```

For documentation to get a personal access token, go to [this github docs page](https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-saml-single-sign-on/authorizing-a-personal-access-token-for-use-with-saml-single-sign-on).

## Build locally

Below are steps if you want to compile your own local tarball of the package.

1) clone the repo and add an authenticaion token to the .npmrc file.
```
//npm.pkg.github.com/:_authToken=AUTH_TOKEN
@us-epa-camd:registry=https://npm.pkg.github.com
```
(Note: some of these steps will take a few minutes.)

2) in your terminal run `yarn install` 

3) run `yarn run webpack`

4) make sure [devtools](https://devtools.r-lib.org/) is installed. [usethis](https://usethis.r-lib.org/) may also be useful.

5) in the R Shiny counsole run

``` r
devtools::document()
devtools::load_all()
```

6) run and inspect `devtools::check()` for are any errors

7) if there are no errors, run `devtools::build()`

8) once the build is complete, you will find the tarball in the parent diectory of the project foler 

9) install from source

``` r
install.packages('/path/epaRShinyTemplate_0.0.1.tar.gz', repos=NULL)
```

## Example

This is a basic example using the header and app version elements:

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

## Disclaimer

The United States Environmental Protection Agency (EPA) GitHub project code is provided on an "as is" basis and the user assumes responsibility for its use. EPA has relinquished control of the information and no longer has responsibility to protect the integrity, confidentiality, or availability of the information. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by EPA. The EPA seal and logo shall not be used in any manner to imply endorsement of any commercial product or activity by EPA or the United States Government.
