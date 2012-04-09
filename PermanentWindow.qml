// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    property alias text: title.text
    width: 250
    height: 180
    color:"#000"
    radius:10
    Rectangle{
        x:10
        height:20
        width:200
        color:"#000"
        Text{
            id: title
            color: "#fff"
            font.pixelSize: 12
        }
    }
}
