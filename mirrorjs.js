var firstComponent;
var secondComponent;
var leftbar = ['Health','Outfit','Stocks','Music','TV'];
var leftbaropen = new Array(5);

function click_icon(app){
    var yPos = 0;
    var open = 0;
    var count = 0;
    while (leftbar[count] != app && count < 4){
        ++count;
    }
    if (leftbaropen[count] != null){
        open = 1;
        leftbaropen[count].destroy();
        leftbaropen[count] = null;
    }
    else{
        yPos = 110 + count*110;
        if (count == 4){
            yPos-=110;
        }
    //  leftbar[count].color = "#555";
    }
    if (open == 0){
    var path;
        if (count < 3){
            path = "../mirror/WindowSize2.qml";
        }
        else{
            path = "../mirror/Music_TV_Window.qml";
            if (count == 3){
                if (leftbaropen[4]){
                    leftbaropen[4].destroy();
                    leftbaropen[4] = null;
                }
            }
            else{
                if (leftbaropen[3]){
                    leftbaropen[3].destroy();
                    leftbaropen[3] = null;
                }
            }
        }
    if (secondComponent == null)
        secondComponent = Qt.createComponent(path);

    if (secondComponent.status == Component.Ready) {
        var dynamicObject2 = secondComponent.createObject(home);
        if (dynamicObject2 == null) {
            console.log("error creating click");
            console.log(component.errorString());
            return false;
        }
        dynamicObject2.x = 70;
        dynamicObject2.y = yPos;
        leftbaropen[count] = dynamicObject2;
    } else {
        console.log("error loading click component");
        console.log(component.errorString());
        return false;
    }
    }
    //else{
        //close_all(app);
    //}
}
