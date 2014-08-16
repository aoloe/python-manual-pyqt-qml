import QtQuick 2.0
import QtQuick.Controls 1.0

ApplicationWindow {
    id: root

    width: 500
    height: 300
    title: qsTr("My first dialog")

    Button {
        text: qsTr("Quit")
        onClicked: Qt.quit()
    }
}
