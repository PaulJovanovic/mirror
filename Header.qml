// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    width: 490
    height: 140
    radius:40
    color:"#000"
    Rectangle{
        height:80
        width:460
        color:"#000"
        radius:40
        y:55
        x:10
        Text {
            color:"#fff"
            text: "Mon Feb 27 4:00 PM"
            font.pixelSize: 48
        }
    }
}
