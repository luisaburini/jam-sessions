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
            },
            State{
                name: "SignUp"
            },
            State{
                name: "Login"
            },
            State{
                name: "Profile"
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
        Row{
            anchors.bottom: jamRect.bottom
            anchors.horizontalCenter: background.horizontalCenter
            spacing: background.width/4

            JamButton{
                id: signUpButton
                jamText: "SIGNUP"
                onClicked: {
                    jamRect.state = "SignUp"
                }
            }
            JamButton{
                id: loginButton
                jamText: "LOGIN"
                onClicked: {
                    jamRect.state = "Login"
                }
            }
        }
    }

    SignUp{
        id: signUpScreen
        anchors.fill: parent
        visible: (jamRect.state === "SignUp")
    }
    Login{
        id: loginScreen
        anchors.fill: parent
        visible: (jamRect.state == "Login")
    }
    Profile{
        id: profileScreen
        anchors.fill: parent
        visible: (jamRect.state == "Profile")
    }


}
