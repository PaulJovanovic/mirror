// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    property string hexcolor
    width: 100
    height: 100
    color:hexcolor
    radius:50
    x: home.width/2-width/2
    Text{
        x:10
        //anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        text: "L:70"
        color: "#fff"
    }
    Text{
        x:70
        anchors.verticalCenter: parent.verticalCenter
        //anchors.right: parent.right-10
        text: "H:90"
        color:"#fff"
    }
    Text{
        anchors.centerIn: parent
        text:"85"
        font.pixelSize: 32
        color:"#fff"
    }
}
