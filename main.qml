import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    id: mainWindow
    visible: true
    width: 600
    height: 480
    title: qsTr("Jam Sessions")

    Rectangle{
        id: jamRect
        anchors.fill: parent
        color: "#fcff00"
        state: "MainState"
        states:[
            State{
                name: "MainState"
                StateChangeScript{
                    script: {
                        delayAnimation.start()
                    }
                }

            },
            State{
                name: "SignUp"
                StateChangeScript{
                    script: {
                        delayAnimation.start()
                    }
                }
            },
            State{
                name: "Profile"
                StateChangeScript{
                    script: {
                        delayAnimation.start()
                    }
                }
            }

        ]

        Image{
            id: woodenTable
            source: "qrc:/images/wooden-table.png"
            anchors.bottom: jamRect.bottom
            anchors.horizontalCenter: jamRect.horizontalCenter
            width: parent.width
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: background
            source: "qrc:/images/background.png"
            height: jamRect.height/1.3
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: jamRect.horizontalCenter
            y: jamRect.height/14
        }
        JamButton{
            id: startButton
            anchors.bottom: jamRect.bottom
            anchors.horizontalCenter: background.horizontalCenter
            jamText: "START"
            onClicked: {
                jamRect.state = "SignUp"
            }
        }
    }

    SignUp{
        id: signUpScreen
        visible: jamRect.state == "SignUp"
        anchors.fill: parent
    }



    PauseAnimation {
        id: delayAnimation
        duration: 300
    }
}
