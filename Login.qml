import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Item {
    id: signUpScreen
    width: 600
    height: 480

    FontLoader{
        id: androidEmoji
        name: "AndroidEmoji"
        source: "qrc:/fonts/AndroidEmoji.ttf"
    }

    Rectangle{
        id: signUpRect
        anchors.fill: parent
        color: "#fcff00"

        Image {
            id: woodenTable
            source: "qrc:/images/wooden-table.png"
            width: signUpRect.width
            fillMode: Image.PreserveAspectFit
            anchors.bottom: signUpRect.bottom
            anchors.horizontalCenter: signUpRect.horizontalCenter
            JamButton{
                id: jamButtonBack
                jamText: "BACK"
                anchors.bottom: woodenTable.bottom
                anchors.horizontalCenter: woodenTable.horizontalCenter
                onClicked: {
                    jamRect.state = "MainState"
                }
            }
        }

        Rectangle{
            id: rectBackground
            color: "white"
            height: parent.height*0.6
            width: signUpRect.width*0.4
            anchors.centerIn: parent

            ScaleAnimator{
                id: shrinkRect
                target: rectBackground
                from: 1
                to: 0
                duration: 400
            }


            Text{
                id: nameText
                text: "USERNAME"
                font.family: "Times New Roman"
                font.pixelSize: parent.height/15
                color: "black"
                anchors.top: rectBackground.top
                anchors.left: rectBackground.left
                leftPadding: 10
                topPadding: 10
            }

            TextField{
                id: nameTextField
                font.family: "Times New Roman"
                font.pixelSize: nameText.font.pixelSize
                width: rectBackground.width - 15
                height: nameText.height + 20
                color: "#ff0000"
                anchors.top: nameText.bottom
                anchors.horizontalCenter: rectBackground.horizontalCenter
                background: Rectangle{
                    color: "white"
                }
                Rectangle{
                    color: "#ff0000"
                    anchors.bottom: parent.bottom
                    height: 3
                    width: parent.width
                }

            }

            Text{
                id: passWordText
                text: "PASSWORD"
                font.family: "Times New Roman"
                font.pixelSize: parent.height/15
                color: "black"
                anchors.top: nameTextField.bottom
                anchors.left: rectBackground.left
                leftPadding: 10
                topPadding: 5
            }

            TextField{
                id: passwordTextField
                font.family: "Times New Roman"//androidEmoji.name
                font.pixelSize: nameText.font.pixelSize
                width: rectBackground.width - 15
                height: nameText.height + 20
                color: "#ff0000"
                anchors.top: passWordText.bottom
                echoMode: TextField.Password
                anchors.horizontalCenter: rectBackground.horizontalCenter
                background: Rectangle{
                    color: "white"
                }
                Rectangle{
                    color: "#ff0000"
                    anchors.bottom: parent.bottom
                    height: 3
                    width: parent.width
                }

            }
            Text {
                id: passwordDontMatch
                text: "PASSWORDS DON'T MATCH!"
                font.family: "Times New Roman"
                color: "red"
                font.pixelSize: parent.height/25
                anchors.top: passwordTextField.bottom
                visible: false
                anchors.horizontalCenter: rectBackground.horizontalCenter
                topPadding: 5
            }
            SpoonButton{
                anchors.bottom: rectBackground.bottom
                anchors.horizontalCenter: rectBackground.horizontalCenter
                spoonText: "OK"
                spoonTextSize: 20
                spoonRightPadding: 10
                onClicked: {
                    shrinkRect.start()
                    shrinkTimer.start()
                }
            }
        }
    }

    Timer{
        id: shrinkTimer
        interval: 400
        repeat: false
        onTriggered: {
            jamRect.state = "Profile"
        }
    }


}
