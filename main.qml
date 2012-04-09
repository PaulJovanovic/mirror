// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import"mirrorjs.js" as Handler

Rectangle {
    id:home
    width: 1024
    height: 728
    Header{
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
    WindowSize2{
        id: secondHealth
        text: "Health"
        x:70
        y:110
        Rectangle{
            x:10
            y:20
            height:70
            width:150
            color:"#000"
            //INSERT HEALTH APPLICATION HERE
        }
    }
    WindowSize2{
        id: secondOutfit
        text: "Outfit"
        x:70
        y:220
        Rectangle{
            x:10
            y:20
            height:70
            width:150
            color:"#000"
            //INSERT OUTFIT APPLICATION HERE
        }
    }
    WindowSize2{
        id: secondStocks
        text: "Stocks"
        x:70
        y:330
        Rectangle{
            x:10
            y:20
            height:70
            width:150
            color:"#000"
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

    PermanentWindow{
        text:"CTA"
        x:784
        y:110
        Rectangle{
            x:10
            y:20
            height:170
            width:220
            color:"#000"
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
            color:"#000"
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
            color:"#000"
            //INSERT TODOLIST APPLICATION HERE
        }
    }
}
