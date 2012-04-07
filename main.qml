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
    WeatherIcon{

    }
    WindowSize1{
        text: "Health"
        x:10
        y:110
    }
    WindowSize1{
        text: "Outfit"
        x:10
        y:220
    }
    WindowSize1{
        text: "Stocks"
        x:10
        y:330
    }
    WindowSize1{
        text: "Music"
        x:10
        y:440
    }
    WindowSize1{
        text: "TV"
        x:10
        y:550
    }
    PermanentWindow{
        x:784
        y:110
    }
    PermanentWindow{
        x:784
        y:300
    }
    PermanentWindow{
        x:784
        y:490
    }
}
