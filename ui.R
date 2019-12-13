# ui
wes <- leaflet() %>% setView(lng = -72.6569, lat = 41.5566, zoom = 12)
ui2 <- fluidPage(
  leafletOutput("wes"),
  p(),
  titlePanel("Mapping the University: The Case of Wesleyan"),
  fluidRow(
    sidebarLayout(
      sidebarPanel(
        selectInput("var", 
                    label = "Select a location from the drop-down menu to learn about its history and relationship to Wesleyan:",
                    choices = c("[Select location]",
                                "Exley Science Center",
                                "Power Plant",
                                "Long Lane Farm", 
                                "Indian Hill Cemetery",
                                "Beman Triangle", 
                                "High Rise/Traverse Square",
                                "University Organizing Center",
                                "The CFA",
                                "Cheshire Correctional Facility",
                                "York Correctional Institution",
                                "MacDougall-Walker Correctional Institution",
                                "Music House",
                                "200 Church",
                                "Olin Memorial Library",
                                "167-169 High Street",
                                "Alpha Delta Phi",
                                "Office of Public Safety",
                                "College Row",
                                "First President's House/Center for the Americas",
                                "President's House",
                                "Downey House",
                                "Davison Arts Center",
                                "Davison Health Center",
                                "Russell House",
                                "Green Street/North End Action Team"),
                    selected = "[Select location]")
      ),
      mainPanel (
        textOutput("var")
      )
    )
  )
)
