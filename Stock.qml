// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item{
    property alias symbol: symbol.text
    property real change
    property real value
    Text{
        id: symbol
        color: "#fff"
        font.pixelSize: 12
    }
    Text{
        x: 50
        text: value
        color: "#fff"
        font.pixelSize: 12
    }
    Rectangle{
        x: 100
        width:50
        height:15
        color:if(change > 0)"#009900"
              else "#990000"
        radius:4
        Text{
            x:8
            text: if(change > 0)"+"+change
                  else change
            font.pixelSize: 12
            color:"#fff"
        }
    }
}
