# Module UI function
ui_SelectEvent <- function(id, label = "Event:") {
  # Create a namespace function using the provided id
  ns <- NS(id)
  
  selectInput(
    inputId = ns("event"), 
    label   = "Event:", 
    width   = 215,
    choices = c(
      "Install Events"            = "/analytics/install",
      "Install On Request Events" = "/analytics/install-on-request",
      "Build Error Events"        = "/analytics/build-error",
      "macOS Versions for Events" = "/analytics/os-version")
  )
  
}

srv_SelectEvent <- function(input, output, session) {
  selectedEvent <- reactive({
    input$event
  })
}
