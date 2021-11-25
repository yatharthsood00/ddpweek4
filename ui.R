shinyUI(fluidPage(
        headerPanel("Can you catch Chelsea?"),
        sidebarPanel(
                dataTableOutput('lTable')
        ),
        mainPanel(
                tabsetPanel(
                        tabPanel("League Predictor",
                                 h3("How To Use This App"),
                                 p("This application will help you calculate how 
                                   many points current Premier League leaders, 
                                   Chelsea, will end up on by the end of the season. You 
                                   can then see how many points each of the other 
                                   teams would require to win the league."),
                                 p("All you have to do is predict the result for 
                                   each of Chelsea's remaining fixtures on the 
                                   Remaining Fixtures tab. Then click on the End 
                                   of Season tab to see how many points all of 
                                   the other teams would require to win the league. 
                                   Easy as that!"),
                                 p("On the left you can see the current league 
                                   standings as of 13/03/15")),
                        tabPanel("Remaining Fixtures",
                                 radioButtons("southampton", "15/03 - Chelsea vs Southampton",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("hull", "22/03 - Hull vs Chelsea",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("stoke", "04/04 - Chelsea vs Stoke",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("qpr", "12/04 - QPR vs Chelsea",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("manutd", "18/05 - Chelsea vs Man Utd",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("arsenal", "26/04 - Arsenal vs Chelsea",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("leicester", "29/04 - Leicester vs Chelsea",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("crystalpalace", "02/05 - Chelsea vs Crystal Palace",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("liverpool", "09/05 - Chelsea vs Liverpool",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("westbrom", "15/03 - West Brom vs Chelsea",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE),
                                 radioButtons("sunderland", "24/05 - Chelsea vs Sunderland",
                                              c("Chelsea Win" = "win",
                                                "Draw" = "draw",
                                                "Chelsea Loss" = "loss"), inline=TRUE)),
                        tabPanel("End of Season", 
                                 textOutput("totalPoints"),
                                 textOutput("manCityRequire"),
                                 textOutput("arsenalRequire"),
                                 textOutput("manUtdRequire"),
                                 textOutput("liverpoolRequire"),
                                 textOutput("spursRequire"),
                                 textOutput("southamptonRequire"),
                                 textOutput("stokeRequire"),
                                 textOutput("swanseaRequire"),
                                 textOutput("westHamRequire"),
                                 textOutput("newcastleRequire"),
                                 textOutput("crystalPalaceRequire"),
                                 textOutput("westBromRequire"),
                                 textOutput("evertonRequire"),
                                 textOutput("hullRequire"),
                                 textOutput("sunderlandRequire"),
                                 textOutput("astonVillaRequire"),
                                 textOutput("qprRequire"),
                                 textOutput("burnleyRequire"),
                                 textOutput("leicesterRequire")
                )
        )
)))