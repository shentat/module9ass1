
shinyUI(pageWithSidebar(
    #title of application
    headerPanel("GCD Calculator"),
    sidebarPanel(
        #user to enter the two numbers
        h3('Input numbers here to calculate the GCD'),
        numericInput('id1', 'Enter 1st Number:', 1, min=1),
        numericInput('id2', 'Enter 2nd Number:', 1, min=1),
        #definition of gcd, the computed value
        h5('Definition of GCD: the greatest common divisor (gcd) of two or more integers, when at least one of them is not zero, is the largest positive integer that divides the numbers without a remainder. For example, the GCD of 8 and 12 is 4.')
    ),
    
    mainPanel(
        #displaying the output
        h3('Calculator Output'),
        h4('The Greatest Common Divisor, GCD of '),
        #displaying input 1
        verbatimTextOutput("oid1"),
        h4(' and '),
        #displaying input 2
        verbatimTextOutput("oid2"),
        h4(' is: '),
        #computed gcd(input1, input2)
        verbatimTextOutput("oid3"),
        h5('The above shows the result of the computed GCD from the given two numbers')
    )

))
