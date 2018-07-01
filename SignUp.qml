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


        Rectangle{
            id: rectBackground
            color: "white"
            height: parent.height*0.8
            width: signUpRect.width*0.5
            anchors.centerIn: signUpRect

            Text{
                id: nameText
                text: "User name"
                font.family: "Times New Roman"
                font.pixelSize: parent.height/22
                color: "#ff0000"
                anchors.top: rectBackground.top
                anchors.left: rectBackground.left
                leftPadding: 10
            }

            TextField{
                id: nameTextField
                font.family: "Times New Roman"//androidEmoji.name
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
                text: "Password"
                font.family: "Times New Roman"
                font.pixelSize: parent.height/22
                color: "#ff0000"
                anchors.top: nameTextField.bottom
                anchors.left: rectBackground.left
                leftPadding: 10
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
            Text{
                id: passWordConfirmText
                text: "Confirm password"
                font.family: "Times New Roman"
                font.pixelSize: parent.height/22
                color: "#ff0000"
                anchors.top: passwordTextField.bottom
                anchors.left: rectBackground.left
                leftPadding: 10
            }

            TextField{
                id: passwordConfirmTextField
                font.family: "Times New Roman"
                font.pixelSize: nameText.font.pixelSize
                width: rectBackground.width - 15
                height: nameText.height + 20
                color: "#ff0000"
                anchors.top: passWordConfirmText.bottom
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
            Text{
                id: instrumentText
                text: "Instrument"
                font.family: "Times New Roman"
                font.pixelSize: parent.height/22
                color: "#ff0000"
                anchors.top: passwordConfirmTextField.bottom
                anchors.left: rectBackground.left
                leftPadding: 10
            }
            ComboBox{
                id: comboBoxInstruments
                editable: true
                width: rectBackground.width - 15
                model: ListModel{
                    ListElement{ text: "Bass";}
                    ListElement{ text: "Drums";}
                    ListElement{ text: "Theremin";}
                }
                anchors.top: instrumentText.bottom
                anchors.horizontalCenter: rectBackground.horizontalCenter
            }
        }

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

                }
            }
        }
    }


}
