// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "mirrorjs.js" as Handler

Rectangle {
    property string hexcolor
    property alias text: title.text
    width: 250
    height: 200
    color:hexcolor
    radius:10
    MouseArea{
        anchors.fill:parent
        onClicked: Handler.click_secondlevel(text)
    }
    Item{
        x:10
        height:20
        width:200
        Text{
            id: title
            color: "#fff"
            font.pixelSize: 12
        }
    }
    Rectangle{
        y:16
        width:parent.width
        height:2
        color:"#fff"
    }
}
