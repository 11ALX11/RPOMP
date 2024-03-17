import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    width: 800
    height: 1600
    color: Constants.backgroundColor

    anchors.fill: parent
    anchors.horizontalCenter: parent.horizontalCenter

    Button {
        id: button
        text: "Вернуться"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 36
        anchors.topMargin: 32

        Connections {
            target: button
            onClicked: {
                rectangle.hide();
                rectangle.destroy();
            }
        }
    }
}
