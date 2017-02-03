#ui.R
library(shiny)
shinyUI(fluidPage(
  titlePanel("Derivates"),
  sidebarLayout(
    sidebarPanel(
      fluidRow(
        textInput("f", label = h1(withMathJax("$$f(x)=$$")),value="x**2")
      )
    ),
    mainPanel(
      htmlOutput("df")
    )
  )
))