ui_SelectDays <- function(id, label = "Days:") {
  ns <- NS(id)
  
  tagList( 
    selectInput(
      inputId = ns("days"), 
      label   = "Days:", 
      width   = 120,
      choices = c(
        "30 Days"  = "/30d",
        "90 Days"  = "/90d",
        "365 Days" = "/365d"
      )
    )
  )
}

srv_SelectDays <- function(input, output, session) {
  selectedDays <- reactive({
    input$days
  })
}