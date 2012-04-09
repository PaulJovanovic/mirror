var firstComponent;
var secondComponent;
var leftbar = ['Health','Outfit','Stocks','Music','TV'];
var leftbaropen = [null,null,null,null,null]

function click_icon(app){
    var yPos = 0;
    var open = 0;
    var count = 0;
    //console.log(leftbaropen.length);
    //while (leftbar[count] != app && count < 4){
     //   ++count;
    //}
    if (app == "Health"){
        if (secondHealth.visible == false){
            firstHealth.hexcolor = "#444";
            secondHealth.visible = true;
        }
        else{
            firstHealth.hexcolor = "#000";
            secondHealth.visible = false;
        }
    }
    else if(app == "Outfit"){
        if (secondOutfit.visible == false){
            firstOutfit.hexcolor = "#444";
            secondOutfit.visible = true;
        }
        else{
            firstOutfit.hexcolor = "#000";
            secondOutfit.visible = false;
        }
    }
    else if(app == "Stocks"){
        if (secondStocks.visible == false){
            firstStocks.hexcolor = "#444";
            secondStocks.visible = true;
        }
        else{
            firstStocks.hexcolor = "#000";
            secondStocks.visible = false;
        }
    }
    else if(app == "Weather"){
        if (secondWeather.visible == false){
            secondWeather.visible = true;
        }
        else{
            secondWeather.visible = false;
        }
    }
    else if(app == "Music"){
        if (secondMusic.visible == false){
            if(secondTV.visible == true){
                firstTV.hexcolor = "#000";
                secondTV.visible = false;
            }
            firstMusic.hexcolor = "#444";
            secondMusic.visible = true;
        }
        else{
            firstMusic.hexcolor = "#000";
            secondMusic.visible = false;
        }
    }
    else{
        if (secondTV.visible == false){
            if(secondMusic.visible == true){
                firstMusic.hexcolor = "#000";
                secondMusic.visible = false;
            }
            firstTV.hexcolor = "#444";
            secondTV.visible = true;
        }
        else{
            firstTV.hexcolor = "#000";
            secondTV.visible = false;
        }
    }

    /*
    if (leftbaropen[count] != null){
        open = 1;
        console.log("Does this work? " + leftbaropen[count]);
        leftbaropen[count].destroy();
        leftbaropen[count] = null;
    }
    else{
        yPos = 110 + count*110;
        if (count == 4){
            yPos-=110;
        }
    //  leftbar[count].color = "#444";
    }
    if (open == 0){
        var path;
        if (count < 3){
            path = "../mirror/WindowSize2.qml";
        }
        else{
            path = "../mirror/Music_TV_Window.qml";
            if (count == 3){
                console.log("3 was created 4=" + leftbaropen[4]);
                if (leftbaropen[4] != null){
                    console.log("4 should be deleted");
                    leftbaropen[4].destroy();
                    leftbaropen[4] = null;
                }
            }
            else{
                console.log("4 was created 3=" + leftbaropen[3]);
                if (leftbaropen[3] != null){
                    console.log("3 should be deleted");
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
            dynamicObject2.iden = app + count;
            if (count == 3)
                dynamicObject2.color = "#134089";
            console.log(leftbaropen[count]);
            leftbaropen[count] = dynamicObject2;
            console.log(leftbaropen[count]);
        } else {
            console.log("error loading click component");
            console.log(component.errorString());
            return false;
        }
    }
    console.log(count);
    for (var i = 0; i < leftbaropen.length; ++i){
        console.log("leftbaropen[" + i + "] = " + leftbaropen[i]);
    }
    */
}
