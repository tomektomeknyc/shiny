Covid infections in European countries throughout January 2022
========================================================
author:Tom Osuchowski
date:01/15/2022
autosize: true

Data
========================================================

```r
covid <- read.csv2("COVID.csv")
covid
```

```
         DATE AUSTRIA BELGIUM BULGARIA CROATIA CYPRUS CHECHIA DENMARK ESTONIA
1  12/01/2022   11953       0     7062    7956   3515   12413   22396    2203
2  11/01/2022   10441      16     6761    1578   4187    7381   14414    1980
3  10/01/2022   10860   14690     1716    7333   3012    2771   19248    1258
4  09/01/2022    7171   10996     3176    8817   3959    3975   12588    1278
5  08/01/2022    9028   15258     5524    3911   5244    6696   18261    1647
6  07/01/2022    8288   23686     5525    9058   3777    6679   25995    1729
7  06/01/2022   10778   23567     6766    8587   5202    7422   28283    1642
8  05/01/2022    5435   25970     6252    5845   5457   10229   25073    1488
9  04/01/2022    3221   28048     1918    1103   5024    9383    8801    1497
10 03/01/2022   32360  131402    20863   42418  25895   56284  190823    9144
   FINLAND FRANCE GERMANY GREECE HUNGARY
1     9768 368149   80430  32833    7883
2    23325  93896   45690  27766    3382
3        0 296097   25255  18592   14655
4        0 303669   36552  37670       0
5     9921 328214   55889  29334       0
6     5979 261481   56335  33711    6524
7     6791 332252   64340  43386    6454
8     5492 271686   58912  50182    5270
9    17047  67461   30561  36246    2429
10   39000 153660  329138 214194   28536
```


Slide With Code
========================================================

```r
library(shiny)
covid <- read.csv2("COVID.csv")
# A fluid  layout
fluidPage(

  # Title
  titlePanel("COVID infections per country in January 2022"),

  # Create a row with a sidebar
  sidebarLayout(

    # Sidebar layout containing input controls
    sidebarPanel(p( a("User Information", style="color:green",href="https://rpubs.com/tomektomeknyc/855548")),
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
```

<!--html_preserve--><div class="container-fluid">
<h2>COVID infections per country in January 2022</h2>
<div class="row">
<div class="col-sm-4">
<form class="well" role="complementary">
<p>
<a style="color:green" href="https://rpubs.com/tomektomeknyc/855548">User Information</a>
</p>
<div class="form-group shiny-input-container">
<label class="control-label" id="Country-label" for="Country">Country:</label>
<div>
<select id="Country"><option value="AUSTRIA" selected>AUSTRIA</option>
<option value="BELGIUM">BELGIUM</option>
<option value="BULGARIA">BULGARIA</option>
<option value="CROATIA">CROATIA</option>
<option value="CYPRUS">CYPRUS</option>
<option value="CHECHIA">CHECHIA</option>
<option value="DENMARK">DENMARK</option>
<option value="ESTONIA">ESTONIA</option>
<option value="FINLAND">FINLAND</option>
<option value="FRANCE">FRANCE</option>
<option value="GERMANY">GERMANY</option>
<option value="GREECE">GREECE</option>
<option value="HUNGARY">HUNGARY</option></select>
<script type="application/json" data-for="Country" data-nonempty="">{"plugins":["selectize-plugin-a11y"]}</script>
</div>
</div>
<hr/>
<span class="help-block">Covid infections in the first week of 2022</span>
</form>
</div>
<div class="col-sm-8" role="main">
<div id="infections" class="shiny-plot-output" style="width:100%;height:400px;"></div>
</div>
</div>
</div><!--/html_preserve-->


Slide With Plot
========================================================


```r
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
```

```
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
```

Slide With server.R
========================================================


```r
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
```

```
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
```
https://1r1vhq-tom0osuchowski.shinyapps.io/developing-data-products-master/?_ga=2.264062472.522626419.1642178021-1077556066.1642178021
