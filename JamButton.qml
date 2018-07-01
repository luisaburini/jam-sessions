import QtQuick 2.9

Item {
    id: jamButton
    property int jamWidth: 150
    property int jamHeight: 70
    property string jamText
    property int jamTextSize: 20
    signal clicked

    width: jamWidth
    height: jamHeight

    FontLoader{
        id: androidEmoji
        name: "AndroidEmoji"
        source: "qrc:/fonts/AndroidEmoji.ttf"
    }

    Image{
        id: jamButtonImage
        source: "qrc:/images/jam-splash.png"
        height: jamHeight
        width: jamWidth
        fillMode: Image.PreserveAspectFit
        Text {
            id: jamButtonText
            text: jamText
            color: "#fcff00"
            font.family: androidEmoji.name
            font.pixelSize: jamTextSize
            //anchors.centerIn: jamButtonImage
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                jamButton.clicked()
                animator.running = true
            }
        }
        SequentialAnimation{
            id: animator
            ScaleAnimator{id: shrink;target: jamButton;from: 1;to: 0.75;duration: 150;}
            ScaleAnimator{id: enlarge;target: jamButton;from: 0.75;to: 1;duration: 150;}
        }


    }
}
