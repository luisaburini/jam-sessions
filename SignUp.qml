import QtQuick 2.0

Item {
    id: signUpScreen
    width: 600
    height: 480

    Rectangle{
        id: signUpRect
        anchors.fill: parent
        color: "#fcff00"

        Rectangle{
            color: "white"
            height: parent.height*0.75
            width: signUpRect.width*0.5
            anchors.centerIn: signUpRect
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

            }
        }
    }


}
