library(shiny)
covid <- read.csv2("COVID.csv")
# A fluid  layout
fluidPage(

  # Title
  titlePanel("COVID infections per country in January 2022"),

  # Create a row with a sidebar
  sidebarLayout(


    # Sidebar layout containing input controls
    sidebarPanel(p( a("User Information", style="color:green",href="")),
                 selectInput("Country", "Country:",
                             choices=colnames(covid[-1])),
                 hr(),
                 helpText("Covid infections in the first week of 2022")
    ),

    # Barplot
    mainPanel(
      plotOutput("infections")
    )

  )
)

