// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import"mirrorjs.js" as Handler
Rectangle {
    id:home
    width: 1024
    height: 728
    Header{
        id:topright
        x:570
        y:-40
    }
    HeaderWeather{
        id: secondWeather
        x:-40
        y:-40
    }

    WeatherIcon{
        MouseArea{
            anchors.fill:parent
            onClicked: Handler.click_icon("Weather")
        }
    }
    WindowSize1{
        id: firstHealth
        text: "Health"
        x:10
        y:110
    }
    WindowSize1{
        id: firstOutfit
        text: "Outfit"
        x:10
        y:220
    }
    WindowSize1{
        id: firstStocks
        text: "Stocks"
        x:10
        y:330
    }
    WindowSize1{
        id: firstMusic
        text: "Music"
        x:10
        y:440
    }
    WindowSize1{
        id: firstTV
        text: "TV"
        x:10
        y:550
    }
    WindowSize1{
        id: firstPreferences
        text: "Pref"
        x:10
        y:660
    }
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
        }
    }
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
    WindowSize3{
        id: thirdHealth
        text: "Health"
        visible: false
    }
    WindowSize3{
        id: thirdOutfit
        text: "Outfit"
        visible: false
    }
    WindowSize3{
        id: thirdStocks
        text: "Stocks"
        visible: false
    }
    PermanentWindow{
        text:"CTA"
        x:784
        y:110
        Rectangle{
            x:10
            y:20
            height:170
            width:220
            color:"#222"
            //INSERT CTA APPLICATION HERE
        }
    }
    PermanentWindow{
        text:"Calendar"
        x:784
        y:320
        Rectangle{
            x:10
            y:20
            height:170
            width:220
            color:"#222"
            //INSERT CALENDAR APPLICATION HERE
        }
    }
    PermanentWindow{
        text:"Todo List"
        x:784
        y:530
        Rectangle{
            x:10
            y:20
            height:170
            width:220
            color:"#222"
            //INSERT TODOLIST APPLICATION HERE
        }
    }
}
