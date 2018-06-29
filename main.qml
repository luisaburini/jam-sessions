import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1024
    height: 640
    title: qsTr("Jam Sessions")

    Rectangle{
        id: jamRect
        anchors.fill: parent
        color: "#fcff00"
        Row{
            anchors.bottom: jamRect.bottom
            anchors.horizontalCenter: jamRect.horizontalCenter
            spacing: 100
            JamButton{
                id: helloButton
                jamWidth: 150
                jamHeight: 250
            }
            JamButton{
                id: goodbyeButton
                jamWidth: 150
                jamHeight: 250
            }
        }
        Image {
            id: background
            source: "qrc:/images/background.png"
            anchors.centerIn: parent
            height: parent.height/1.5
            fillMode: Image.PreserveAspectFit
        }

    }


}
