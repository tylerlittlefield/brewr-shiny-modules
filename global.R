library(shiny)    # app framework
library(ggplot2)  # plotting
library(ggsci)    # color scales
library(forcats)  # reordering factors
library(jsonlite) # easy json to dataframe
library(brewr)    # homebrew json api wrapper
library(readr)    # convert datatypes easily
library(curl)     # need so shiny wont complain
library(glue)     # better paste0
library(cli)      # console tools
library(crayon)   # console colors

modules <- list.files('modules', full.names = TRUE)
functions <- list.files('functions', full.names = TRUE)
imports <- c(modules, functions)
sapply(imports, source)
