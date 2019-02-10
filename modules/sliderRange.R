ui_SliderRange <- function(id, label = "Slider Range:") {
  ns <- NS(id)
  
  tagList( 
    sliderInput(
      inputId = ns("slider_range"), 
      label = "Slider Range:", 
      min = 1, 
      max = 100, 
      value = c(1, 30)
    )
  )
}

srv_SliderRange <- function(input, output, session) {
  sliderRange <- reactive({
    input$slider_range
  })
}