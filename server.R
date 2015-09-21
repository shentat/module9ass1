
library(UsingR)

#function to compute the gcd for two numbers
gcd <- function(x,y) {
    r <- x%%y;
    return(ifelse(r, gcd(y, r), y))
}

#taking in the inputs id1 and id2 from ui.R to compute the gcd
#output are oid1=id1, oid2=id2, oid3=gcd(id1,id2)
shinyServer(
    function(input, output) {
        #displaying input 1
        output$oid1 <- renderPrint({input$id1})
        #displaying input 2
        output$oid2 <- renderPrint({input$id2})
        #computing gcd with input 1 and 2
        output$oid3 <- renderPrint(gcd({input$id1},{input$id2}))
    }
    
)