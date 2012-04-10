// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "mirrorjs.js" as Handler

Rectangle {
    property string hexcolor
    width: 490
    height: 140
    radius:40
    color:hexcolor
    visible: false;
    Item{
        height:80
        width:460
        y:55
        x:10
    }
}
