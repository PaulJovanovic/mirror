// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    Item{
        id:watch
        property int hours
        property int minutes
        property string stringmin
        property int seconds
        property real shift
        property string night
        property string fulldate

        function timeChanged(){
            var date = new Date;
            hours = date.getHours();
            if (hours < 12){
                night = "AM";
            }
            else{
                night = "PM";
            }
            minutes = date.getMinutes();
            stringmin = "" + minutes;
            if (minutes < 10){
                stringmin = "0" + stringmin;
            }
            seconds = date.getUTCSeconds();
            fulldate = date.toDateString();
            fulldate = fulldate.slice(0,fulldate.length-4);
            clock.text = "" + fulldate  + hours + ":" + stringmin + " "+ night;
        }

        Timer{
            interval: 1000; running:true; repeat: true;
            onTriggered: watch.timeChanged();
        }
    }
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
            id:clock
            color:"#fff"
            text: "Mon Feb 27 4:00 PM"
            font.pixelSize: 48
        }
    }
}
