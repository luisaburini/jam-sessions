import QtQuick 2.9

Item {
    id: jamButton
    property int jamWidth
    property int jamHeight
    signal clicked

    width: jamWidth
    height: jamHeight

    Image{
        id: jamButtonImage
        source: "qrc:/images/jam-splash.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
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
