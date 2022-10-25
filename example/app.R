library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(epaRShinyTemplate)

ui <- div(
  # load in shiny dashboard first so the uswds styling can take over
  # the shiny/dashboard styling
  useShinydashboard(),

  epaSlimHeader('epaNav',appEnvironment='development'),

  # inherit uswds styling
  tags$head(
    tags$style(HTML("
              /* Keep uswds styles in body */
              body {
                font-size: inherit;
                line-height: inherit;
              }"
                    )
               )
  ),

  # main div for custom uswds styling
  tags$div(class="padding-y-2 mobile-lg:padding-x-2 tablet:padding-x-4 widescreen:padding-x-10 font-sans-xs text-base-darkest text-ls-1 line-height-sans-5",

           # App title ----
           tags$h1(class="font-sans-xl text-bold", "An Example"),

           # Sidebar layout with a input and output definitions ----
           sidebarLayout(

             # Sidebar panel for inputs ----
             sidebarPanel(

               # Input: Selector for choosing dataset ----
               selectInput(inputId = "dataset",
                           label = "Choose a dataset:",
                           choices = c("rock", "pressure", "cars")),

               # Input: Numeric entry for number of obs to view ----
               numericInput(inputId = "obs",
                            label = "Number of observations to view:",
                            value = 10)
             ),

             # Main panel for displaying outputs ----
             mainPanel(

               # Output: Verbatim text for data summary ----
               verbatimTextOutput("summary"),

               # Output: HTML table with requested number of observations ----
               tableOutput("view")

             )
           )
  ),

  tags$div(class="font-sans-xs text-base-darkest",
           epaSlimFooter('epaFoot',appVersion = "0.0.0",appPublished = "testing")
           ),
)

server <- function(input, output, session) {
  # Return the requested dataset ----
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars)
  })

  # Generate a summary of the dataset ----
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })

  # Show the first "n" observations ----
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })
}

shinyApp(ui, server)
