// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "mirrorjs.js" as Handler

Rectangle {
    property alias text: title.text
    width: 340
    height: 280
    radius: 10
    color:"#000"
    visible: false
   //property string text: "temp"
    Rectangle{
        x:20
        height:20
        width:300
        color:"#000"
        Text{
            id: title
            //text: text
            font.pixelSize: 12
            color:"#fff"
        }
    }
    Rectangle{
        x:320
        height:20
        width: 10
        radius:20
        color:"#000"
        Text{
            text:"x"
            font.pixelSize: 12
            color:"#fff"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: Handler.click_icon(text)
        }
    }
    Rectangle{
        y:16
        width:parent.width
        height:2
        color:"#fff"
    }
}
