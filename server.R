# server
server2 <- function(input, output) {
  
  output$wes<- renderLeaflet({
    lat <- wes_data %>% filter(Place == input$var)
    long <- wes_data %>% filter(Place == input$var)
    zoom <- wes_data %>% filter(Place == input$var)
    color <- wes_data %>% filter(Place == input$var)
    opacity <- wes_data %>% filter(Place == input$var)
    lat1 <- lat[1,3]
    long1 <- long[1,2]
    zoom1 <- zoom[1,4]
    color1 <- color[1,5]
    opacity1 <- opacity[1,6]
    map <- leaflet() %>% 
      addTiles() %>%
      setView(long1, lat1, zoom = zoom1) %>%
      addCircleMarkers(data=wes_data, label = wes_data$Place, color=color1, opacity=opacity1, fillOpacity=.2, radius=18, layerId = ~wes_data$Place) 
  })
  y <- reactive({
    if (input$var ==  "Long Lane Farm") {
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    } 
    else if (input$var=="[Select location]"){
      paste("Project Description")
    }
    else if (input$var=="Indian Hill Cemetery"){
      paste("different description")
    }
    else if (input$var=="Beman Triangle"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var=="High Rise/Traverse Square"){
      paste("High Rise and Low Rise apartments were originally built as the William St. Apartments in conjunction with the recently built Traverse Square subsidized housing community with a $1.6 million subsidy from HUD. The project was meant to breach the divide between Wesleyan University and Middletown. Over the years, tensions have flared at different times between the communities. For a more detailed history and analysis of the relationship between High/Low and Traverse Square, read the article “High/Low and Traverse Square” below.
")
    }
    else if (input$var== "University Organizing Center"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==  "The CFA"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==  "Cheshire Correctional Facility"){
      paste("A maximum-security men’s prison in Connecticut and the first facility at which Center for Prison Education started teaching classes in 2009. The first cohort of students was nineteen men, and the program has admitted 72 men since.")
    }
    else if (input$var==  "York Correctional Institution"){
      paste("The only women’s prison in the state of Connecticut. CPE began classes at York in the spring of 2013.")
    }
    else if (input$var==   "MacDougall-Walker Correctional Institution"){
      paste("The Wesleyan Theater Department offers a course called ‘America in Prison: Theater Behind Bars’, in which student participants collaborated with incarcerated individuals at MacDougall-Walker (and Cheshire in previous years) to create performance pieces. At the end of the semester, the final scripts are performed in the prison by the incarcerated individuals and at Wesleyan by the student participants.")
    }
    else if (input$var==   "Music House"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==    "200 Church"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "Olin Memorial Library"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "167-169 High Street"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "Alpha Delta Phi"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==    "Office of Public Safety"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==    "College Row"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "First President's House/Center for the Americas"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==  "President's House"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "Downey House"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==    "Davison Arts Center"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "Davison Health Center"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "Russell House"){
      paste("As this project is still a work in progress, we are open to collaboration and support to help us compile a complete history. If you have any thoughts or would like to contribute, please email abolitionistus@gmail.com.")
    }
    else if (input$var==   "Green Street/North End Action Team"){
      paste("The Green Street Art Center was a community center that was a product of North End Action Team organizing and funding from Wesleyan University. The center opened in 2005 and closed in 2017. For more information, read the article “The North End and Green Street Art Center” below. 
")
    }
    else {
      paste("")
    }
  })
  output$var <- renderText({ 
    {y()}
  })
}

#shinyApp(ui2, server2)




