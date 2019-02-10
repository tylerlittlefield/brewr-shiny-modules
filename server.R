server <- function(input, output, session) {
  event <- callModule(srv_SelectEvent, "event")
  days <- callModule(srv_SelectDays, "days")
  slider_range <- callModule(srv_SliderRange, "slider_range")
  
  observeEvent(c(event(), days(), slider_range()), {
    print(
      glue(
        "{rule(left = 'Shiny log')}
        Event: {event()}
        Days: {days()}
        Slider Range: {slider_range()[1]} : {slider_range()[2]}"
      )
    )
  })
  
  df <- reactive({
    brewr_data <- fromJSON(brewr(paste0(event(), days())))[["items"]]
  })
  
  # Render the datatable
  output$table <- DT::renderDataTable(
    DT::datatable(
      df(),
      extensions = c("Scroller"),
      options = list(
        scrollX = TRUE,
        deferRender = TRUE,
        scrollY = 320,
        dom = "lftp"
      )
    )
  )
  
  # Render the plot
  output$plot <- renderPlot({
    df <- transform_data(df(), slider_range()[1], slider_range()[2])
    brewr_plot(df)
  }, height = 700)
}