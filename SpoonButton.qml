import QtQuick 2.9
import QtQml 2.2

Item {
    id: spoonButton
    property int spoonWidth: 150
    property int spoonHeight: 70
    property string spoonText
    property int spoonRightPadding
    property int spoonTextSize: 20
    signal clicked

    width: spoonWidth
    height: spoonHeight

    Image{
        id: spoonButtonImage
        source: "qrc:/images/spoon.png"
        height: spoonHeight
        width: spoonWidth
        fillMode: Image.PreserveAspectFit
        Text {
            id: spoonButtonText
            text: spoonText
            color: "#fcff00"
            font.family: androidEmoji.name
            font.pixelSize: spoonTextSize
            //anchors.centerIn: spoonButtonImage
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            rightPadding: spoonRightPadding
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    animator.start()
                    timer.start()
                }
            }
            SequentialAnimation{
                id: animator
                RotationAnimation{id: clockwise;target: spoonButton;direction: RotationAnimation.Clockwise; to: 15;duration: 150;}
                RotationAnimation{id: counterclockwise;target: spoonButton;direction: RotationAnimation.Counterclockwise; to: 0;duration: 100;}
            }
            Timer{
                id:timer
                interval: 300
                repeat: false
                onTriggered: spoonButton.clicked()
            }
        }
    }
}
