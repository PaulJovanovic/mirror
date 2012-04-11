// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    property string hexcolor
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
            if (hours == 0){
                hours = 12;
            }
            else if (hours >12){
                hours = hours-12;
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
    color:hexcolor
    Item{
        height:60
        width:440
        y:55
        x:10
        Text {
            anchors.centerIn: parent
            id:clock
            color:"#fff"
            font.pixelSize: 42
        }
    }
}
