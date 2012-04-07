// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "mirrorjs.js" as Handler

Rectangle {
    property alias text: iconText.text
    width: 50
    height: 50
    radius: 5
    color:"#000"
    Rectangle{
        radius:5
        color:"#000"
        width: parent.width
        height:parent.height-10
    }
    Rectangle{
        color:"#000"
        y:40
        radius:5
        width: parent.width
        height:parent.height-40
        Text {
            id: iconText
            anchors.centerIn: parent
            color:"#fff"
        }
    }
    MouseArea{
        anchors.fill: parent
        onClicked: Handler.click_icon(text)
    }
}
