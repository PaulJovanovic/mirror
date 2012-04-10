// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "mirrorjs.js" as Handler

Rectangle {
    property string hexcolor: "#222"
    property alias text: title.text
    visible: false
    width: 170
    height: 100
    color:hexcolor
    radius:10
    MouseArea{
        anchors.fill: parent
        onClicked: Handler.click_secondlevel(text)
    }
    Rectangle {
        width:150
        x:10
        color:hexcolor
        height:20
        Rectangle{
            height:20
            width:130
            color:hexcolor
            Text {
                id: title
                text: text
                font.pixelSize: 12
                color:"#fff"
            }
        }
        /*Rectangle{
            x:130
            y:4
            height:8
            width:8
            color:"#fff"
            MouseArea{
                anchors.fill: parent
                onClicked: Handler.click_secondlevel(text)
            }
        }*/
        Rectangle{
            x:145
            width:10
            height:20
            radius:10
            color:hexcolor
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
    }
    Rectangle{
        y:16
        width:parent.width
        height:2
        color:"#fff"
    }
}
