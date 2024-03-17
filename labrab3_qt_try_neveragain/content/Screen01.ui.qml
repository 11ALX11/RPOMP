

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import labrab3
import QtQuick.Layouts

Rectangle {
    id: rectangle
    width: 800
    height: 1600
    color: Constants.backgroundColor

    anchors.fill: parent
    anchors.horizontalCenter: parent.horizontalCenter

    Text {
        id: label
        text: qsTr("Лабораторная работа 22")
        anchors.verticalCenter: parent.verticalCenter
        font.family: Constants.font.family
        anchors.topMargin: 45
        font.bold: true
        anchors.verticalCenterOffset: -(rectangle.height / 5)
        anchors.horizontalCenterOffset: 0
        font.pointSize: 22
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text1
        width: rectangle.width - 40
        height: 72
        text: qsTr("Использование датчика ориентации для управления пользовательским интерфейсом (Qt и C++)")
        anchors.top: label.bottom
        anchors.topMargin: 20
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        font.pointSize: 18
        clip: false
        anchors.horizontalCenter: parent.horizontalCenter
    }

    RowLayout {
        id: rowLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: text1.bottom
        anchors.bottom: parent.bottom
        anchors.leftMargin: 40
        anchors.rightMargin: 40
        anchors.topMargin: 40
        anchors.bottomMargin: 180
        spacing: 20

        Button {
            id: button
            text: qsTr("Акселерометр")
            font.bold: false
            font.pointSize: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            autoRepeat: false
            highlighted: false
            flat: false
            Layout.fillWidth: false

            Connections {
                target: button
                onClicked: App.openAccel()
            }
        }

        Button {
            id: button1
            text: qsTr("GPS")
            font.bold: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.pointSize: 16
            Layout.fillWidth: false
        }

        Button {
            id: button2
            text: qsTr("Другие")
            font.bold: false
            font.pointSize: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: false
        }
    }
}
