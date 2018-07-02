import QtQuick 2.9
import QtQml 2.2

Item {
    id: jamButton
    property int jamWidth: 90
    property int jamHeight: 80
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
        source: "qrc:/images/raspberry-jam.png"
        height: jamHeight
        width: jamWidth
        fillMode: Image.PreserveAspectFit
        Text {
            id: jamButtonText
            text: jamText
            color: "#fcff00"
            font.family: androidEmoji.name
            font.pixelSize: jamTextSize
            anchors.centerIn: jamButtonImage
            anchors.bottom: parent.bottom
            bottomPadding: jamHeight/1.3
            anchors.horizontalCenter: parent.horizontalCenter
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                animator.start()
                timer.start()
            }
        }
        SequentialAnimation{
            id: animator
            ScaleAnimator{id: shrink;target: jamButton;from: 1;to: 0.75;duration: 150;}
            ScaleAnimator{id: enlarge;target: jamButton;from: 0.75;to: 1;duration: 100;}
        }
        Timer{
            id:timer
            interval: 300
            repeat: false
            onTriggered: jamButton.clicked()
        }


    }
}
