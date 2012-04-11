// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "mirrorjs.js" as Handler

Rectangle {
    property alias text: tab.text
    property string hexcolor

    width: 102
    height: 20
    border.width: 2
    border.color: hexcolor
    color:"#000"
    radius: 2
    Text{
        id: tab
        font.pixelSize: 12
        anchors.centerIn: parent
        color: hexcolor
    }
    MouseArea{
        anchors.fill: parent
        onClicked: Handler.click_tab(text)
    }
}
