covid <- read.csv2("COVID.csv")
#install.packages("shiny")
function(input, output) {

  # A plot will go here
  output$infections <- renderPlot({

    # Render a barplot
    barplot(covid[,input$Country],
            main=input$Country,
            ylab="Number of covid infections per country",
            xlab="From 3rd till Jan 12 ")
  })
}


