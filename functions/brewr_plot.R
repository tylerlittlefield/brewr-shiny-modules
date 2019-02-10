brewr_plot <- function(df) {
  ggplot(df, aes_string(paste0("fct_reorder(", names(df)[2], "," , names(df)[3], ")"), names(df)[3])) +
    geom_col(aes_string(fill = names(df)[3]), show.legend = FALSE) +
    scale_y_continuous(labels = scales::comma, expand = c(0, 0)) +
    scale_fill_material("blue-grey") +
    coord_flip() +
    theme_minimal() +
    labs(x = NULL,
         y = NULL) +
    theme(text = element_text(family = "SourceCodePro-Regular"), # Lazy/not reproducible
          panel.grid.minor.x = element_blank(),
          panel.grid.major.y = element_blank())
}