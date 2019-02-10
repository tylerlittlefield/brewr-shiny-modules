ui <- fluidPage(
  headerPanel("Homebrew Analytics"),
  sidebarPanel(
    p("This shiny app is a companion tool for the", 
      a(href = "https://github.com/tyluRp/brewr", "brewr"),
      "package I developed. The bulk of the work is done using", 
      a(href = "https://github.com/jeroen/jsonlite", "jsonlite."), "The data 
        itself is provided by", 
      a(href = "https://formulae.brew.sh/analytics/", "Homebrews JSON API,"),
      "I encourage you to check it out if interested!"),
    br(),
    width = 4,
    column(width = 8, ui_SelectEvent("event")),
    column(width = 4, ui_SelectDays("days")),
    column(width = 12, ui_SliderRange("slider_range")),
    div(DT::dataTableOutput(outputId = "table"), style = "font-size:80%")
  ),
  mainPanel(plotOutput("plot"))
)