library(shiny)
library(shinyWidgets)
library(shinydashboard)
library(shinydashboardPlus)

# Define UI for application that draws a histogram
ui <- dashboardPagePlus( 
    
    
    ######################################################
    # Cabecera  Menus
    ######################################################
    header = dashboardHeaderPlus(
        fixed = FALSE,  enable_rightsidebar = FALSE,
        rightSidebarIcon = "gears",
        dropdownMenu(
            type = "tasks", badgeStatus = "danger",
            taskItem(value = 20, color = "aqua", "Refactor code"),
            taskItem(value = 40, color = "green", "Design new layout"),
            taskItem(value = 60, color = "yellow", "Another task"),
            taskItem(value = 80, color = "red", "Write documentation")
        )
    ),
    ######################################################
    # Menu lateral
    ######################################################
    sidebar = dashboardSidebar( 
        sidebarMenu(
            menuItem("Paciente", tabName = "paciente", icon = icon("user-plus")),
            menuItem("HCE", tabName = "hce", icon = icon("id-card-alt")),
            menuItem("Cons. Esterna", tabName = "consulta", icon = icon("user-md")),
            menuItem("Analytics", tabName = "analytics", icon = icon("line-chart")),
            menuItem("Cubos", tabName = "cubos", icon = icon("cube")),
            menuItem("Mapas", tabName = "mapas", icon = icon("map-o"))
        )
    ),
    ######################################################
    # DASHBOARD BODY - dividido en tabItems
    ######################################################
    body = dashboardBody(
    tabItems(
        tabItem(tabName = "paciente",
        fluidRow(
            box(
                title = "ADMISIÓN PACIENTE",
                width = NULL,
                accordion(
                accordionItem( id = 1, title = "1) Registro de 1era Admision", color = "danger", collapsed = TRUE,
                    fluidRow(  
                        column(12, 
                               fluidRow(
                                   column(2, textInput("apellido_paterno", "Apellido Paterno", value = "Zhunio", width = NULL,  placeholder = NULL)),
                                   column(2, textInput("apellido_materno", "Apellido Materno", value = "Iñiguez", width = NULL,  placeholder = NULL)),
                                   column(2, textInput("primer_nombre", "Primer Nombre", value = "Franklin", width = NULL,  placeholder = NULL)),
                                   column(2, textInput("primer_nombre", "Segundo Nombre", value = "Patricio", width = NULL,  placeholder = NULL)),
                                   column(3, numericInput(inputId = 'idcard', label = 'Numero Cedula', value = "") )
                                ),
                               fluidRow(
                                   column(4, textInput("direccion", "Direccion", value = "Rumiñahui 120 y C. Chaparra", width = NULL,  placeholder = NULL)),
                                   column(2, textInput("parroquia", "Parroquia", value = "Cañaribamaba", width = NULL,  placeholder = NULL)),
                                   column(2, textInput("canton", "Canton", value = "Cuenca", width = NULL,  placeholder = NULL)),
                                   column(2, textInput("provincia", "Provincia", value = "Azuay", width = NULL,  placeholder = NULL)),
                                   column(2, textInput("telefono", "Telefono", value = "72809948", width = NULL,  placeholder = NULL))
                                ),
                                fluidRow(
                                    column(2,textInput("fecha_nacimiento", "Fecha Nacim.", value = "01/06/2020", width = NULL,  placeholder = NULL)  ),
                                    column(2,textInput("lugar_nacimiento", "Lugar Nacim.", value = "Cuenca", width = NULL,  placeholder = NULL)  ),
                                    column(2,textInput("nacionalidad", "Nacionalidad", value = "Ecuador", width = NULL,  placeholder = NULL)  ),
                                    column(2,textInput("sexo", "Sexo", value = "H", width = NULL,  placeholder = NULL)),
                                    column(2,textInput("estado_civil", "Estado Civil", value = "Soltero", width = NULL,  placeholder = NULL)),
                                    column(2,textInput("educacion", "educacion", value = "Universidad", width = 100,  placeholder = NULL))
                               
                                ),
                                fluidRow(
                                    column(4, textInput("persona_contacto", "Contacto Emergencia", value = "Miguel Zhunio", width = NULL,  placeholder = NULL)),
                                    column(2, textInput("parentesco", "Parentesco", value = "padre", width = NULL,  placeholder = NULL)),
                                    column(4, textInput("direccion", "Direccion", value = "Rumiñahui 120", width = NULL,  placeholder = NULL)),
                                    column(2, textInput("telefono", "Telefono", value = "123456", width = NULL,  placeholder = NULL))
                                )
                                             
                              )
                            ),
                    ),
                    accordionItem( id = 2, title = "2) Registro Nuevas Admisiones - Atenciones de 1era vez y subsecuentes", color = "warning", collapsed = TRUE,
                        "This is some text!"
                    ),
                    accordionItem( id = 3, title = "3) Registro de Cambios", color = "info", collapsed = TRUE,
                        "This is some text!"
                    )
                )
            )
                    
            )
        ), # end tabItem Paciente
        ##########################
        tabItem(tabName = "hce00",

                    
        ), # end tabItem HCE
        ##########################
        tabItem(tabName = "consulta",
        fluidRow(
            
            
            
                )
        )
        
        
        )
    )
)
    
    
###############################################################
# Define server logic required to draw a histogram
server <- function(input, output) {

    

}

# Run the application 
shinyApp(ui = ui, server = server)
