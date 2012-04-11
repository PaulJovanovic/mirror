// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import"mirrorjs.js" as Handler
Rectangle {
    id:home

    width: 1024
    height: 728
    Header{
        id:topright
        hexcolor:"#444"
        x:570
        y:-40
    }
    HeaderWeather{
        hexcolor:"#444"
        id: secondWeather
        x:-40
        y:-40
    }

    WeatherIcon{
        hexcolor: "#444"
        MouseArea{
            anchors.fill:parent
            onClicked: Handler.click_icon("Weather")
        }
    }

    //Health Icon
    WindowSize1{
        id: firstHealth
        text: "Health"
        x:10
        y:110
    }

    //Changing Room Icon
    WindowSize1{
        id: firstOutfit
        text: "Outfit"
        x:10
        y:220
    }

    //Stocks Icon
    WindowSize1{
        id: firstStocks
        text: "Stocks"
        x:10
        y:330
    }

    //Music Icon
    WindowSize1{
        id: firstMusic
        text: "Music"
        x:10
        y:440
    }

    //TV Icon
    WindowSize1{
        id: firstTV
        text: "TV"
        x:10
        y:550
    }

    //Preferences Icon
    WindowSize1{
        id: firstPreferences
        text: "Pref"
        x:10
        y:660
    }

    //Health Window 2
    WindowSize2{
        id: secondHealth
        text: "Health"
        hexcolor: "#222"
        x:70
        y:110
        Item{
            x:10
            y:20
            height:70
            width:150
            //color: parent.color
            Item{
                width:50
                height:10
                //color:parent.color
                Text{
                    color:"#fff"
                    text: "Health"
                    anchors.centerIn: parent
                }
            }
            Item{
                x:50
                width:50
                height:10
                //color:parent.color
                Text{
                    color:"#999"
                    text: "Exercise"
                    anchors.centerIn: parent
                }
            }
            Item{
                x:100
                width:50
                height:10
                //color:parent.color
                Text{
                    color:"#999"
                    text: "Sleep"
                    anchors.centerIn: parent
                }
            }
            Rectangle{
                y:10
                x:-1
                height:60
                width:2
                //width:129
                //height:20
            }
            Rectangle{
                x:-1
                y:70
                width:149
                height:2
            }
            Rectangle{
                x:9
                y:60
                width:10
                height:10
            }
            Rectangle{
                x:29
                y:50
                width:10
                height:20
            }
            Rectangle{
                x:49
                y:40
                width:10
                height:30
            }
            Rectangle{
                x:69
                y:30
                width:10
                height:40
            }
            Rectangle{
                x:89
                y:20
                width:10
                height:50
                Rectangle{
                    x:2
                    y:2
                    width:6
                    height:48
                    color:secondHealth.color
                }
            }
            Rectangle{
                color:secondHealth.color
                x:109
                y:20
                width:40
                height:40
                Text{
                    color:"#fff"
                    anchors.centerIn: parent
                    font.pixelSize: 24
                    text: "4"
                }
            }
        }
    }

    //Changing Room Window 2
    //Shows quick wardrobe advice for the day
    WindowSize2{
        id: secondOutfit
        text: "Outfit"
        hexcolor: "#222"
        x:70
        y:220
        Item{
            x:10
            y:20
            height:70
            width:150
            //color: parent.color
            //INSERT OUTFIT APPLICATION HERE
            Text{
                color:"#fff"
                text: "Today:"
            }
            Rectangle{
                y:25
                width:parent.width
                Text{
                    anchors.centerIn: parent
                    color:"#fff"
                    text: "Sweater"
                    font.pixelSize: 24
                }
            }
            Text{
                y:35
                color:"#fff"
                text: "Tonight:"
            }
            Rectangle{
                y:60
                width:parent.width
                Text{
                    anchors.centerIn: parent
                    color:"#fff"
                    text: "Umbrella"
                    font.pixelSize: 24
                }
            }
        }
    }

    //Stocks Window 2
    //Shows quick stock quotes from Google Finance
    WindowSize2{
        id: secondStocks
        text: "Stocks"
        hexcolor: "#222"
        x:70
        y:330
        Item{
            x:10
            y:20
            height:70
            width:150
            //color:parent.color
            //INSERT STOCKS APPLICATION HERE
            Stock{
                symbol: "GOOG"
                value: 500.5
                change: 10
            }
            Stock{
                y:20
                symbol: "MSFT"
                value: 25.75
                change: -2.45
            }
            Stock{
                y:40
                symbol: "MSFT"
                value: 25.75
                change: -2.45
            }
            Stock{
                y:60
                symbol: "MSFT"
                value: 25.75
                change: -2.45
            }
        }
    }

    //Music Window
    //Allows playing of music, pausing, volume increase, song selection.
    Music_TV_Window{
        id: secondMusic
        text: "Music"
        x:70
        y:440
        Rectangle{
            x:10
            y:20
            height:250
            width:320
            color:"#000"
            //INSERT MUSIC APPLICATION HERE
        }
    }

    //TV Window
    //Allows starting television, turning off, increase in volume, channel selection.
    Music_TV_Window{
        id: secondTV
        text: "TV"
        x:70
        y:440
        Rectangle{
            x:10
            y:20
            height:250
            width:320
            color:"#000"
            //INSERT TV APPLICATION HERE
        }
    }

    //Large Health Window
    //Shows detailed health information
    WindowSize3{
        id: thirdHealth
        text: "Health"
        visible: false
    }

    //Large Changing Room Window
    //Allows the user to put together an outfit
    WindowSize3{
        id: thirdOutfit
        text: "Outfit"
        visible: false
    }

    //Large stock window
    //Allows user to view stocks in detail and over time.
    WindowSize3{
        id: thirdStocks
        text: "Stocks"
    }

    //Large Preferences Window
    //Gives the user the ablility to set up Google account, Wifi Connections, location.
    WindowSize3{
        id: thirdPreferences
        text: "Preferences"
        Item{
            x: 10
            y: 29
            Rectangle{
                y:10
                width:500
                height:270
                color:"#000"
                border.width:2
                border.color:"#fff"
                Item{
                    x:10
                    y:16
                    id: content_general
                    visible: true
                    Text{
                        color:"#fff"
                        text: "General"
                    }
                }
                Item{
                    x:10
                    y:16
                    id: content_google
                    visible: false
                    Text{
                        color:"#fff"
                        text: "Google"
                    }
                }
                Item{
                    x:10
                    y:16
                    id: content_wifi
                    visible: false
                    Text{
                        color:"#fff"
                        text: "Wifi"
                    }
                }
            }
            Tab{
                x:10
                id: tab_general
                hexcolor: "#fff"
                text:"General"
            }
            Tab{
                id: tab_google
                x:122
                hexcolor: "#444"
                text:"Google"
            }
            Tab{
                id: tab_wifi
                x:234
                hexcolor: "#444"
                text:"Wifi"
            }
        }
    }

    //Large CTA Window
    //
    WindowSize3{
        id: thirdCTA
        text: "CTA"
    }

    //Large Calendar Window
    //
    WindowSize3{
        id: thirdCalendar
        text: "Calendar"
    }

    //Large Todo Window
    //
    WindowSize3{
        id: thirdTodo
        text: "Todo List"
    }

    //CTA Tracker/Traffic Information Quick Window
    //Viewable information of traveling in Chicago
    PermanentWindow{
        id: firstCTA
        hexcolor:"#444"
        text:"CTA"
        x:784
        y:110
        Item{
            x:10
            y:20
            height:170
            width:220
            //color:"#222"
            //INSERT CTA APPLICATION HERE
        }
    }

    //Calendar Window 1
    //View of what to do today
    PermanentWindow{
        id: firstCalendar
        hexcolor:"#444"
        text:"Calendar"
        x:784
        y:320
        Item{
            x:10
            y:20
            height:170
            width:220
            //color:"#222"
            //INSERT CALENDAR APPLICATION HERE
        }
    }

    //Todo List Window 1
    //Things the user wants to do/should do according to the application
    PermanentWindow{
        id: firstTodo
        hexcolor:"#444"
        text:"Todo List"
        x:784
        y:530
        Item{
            x:10
            y:20
            height:170
            width:220
            //color:"#222"
            //INSERT TODOLIST APPLICATION HERE
        }
    }
}
