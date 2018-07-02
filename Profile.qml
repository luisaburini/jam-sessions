import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtCanvas3D 1.1
import "textureandlight.js" as GLCode

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
        }
        Canvas3D {
            id: canvas3d
            anchors.fill: parent

            //! [0]
            focus: true
            property double xRotAnim: 0
            property double yRotAnim: 0
            property double zRotAnim: 0
            property bool isRunning: true

            //! [1]
            // Emitted when one time initializations should happen
            onInitializeGL: {
                GLCode.initializeGL(canvas3d);
            }

            // Emitted each time Canvas3D is ready for a new frame
            onPaintGL: {
                GLCode.paintGL(canvas3d);
            }
            //! [1]

            onResizeGL: {
                GLCode.resizeGL(canvas3d);
            }

            NumberAnimation {
                target: canvas3d
                loops: 1
                running: jamRect.state == "Profile"
                property: "yRotAnim"
                from: 0.0
                to: 90
                duration: 2000
                easing.type: Easing.Linear
            }
        }
    }


}
