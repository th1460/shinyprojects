require(shiny)
require(rSymPy)

#server.R
sympy("var('x')")
shinyServer(function(input, output) {
  output$df <- renderUI({
    h1(withMathJax(paste0("$$\\frac{dy}{dx}=$$","$",sympy("latex(diff(",input$f,",x, 1))"),"$")))
  })
})