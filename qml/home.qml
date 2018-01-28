import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.2
import Huestacean.HueRunner 1.0

Pane {
    id: home

    Column {
        id: column
        width: 200
        height: 400

        Label {
            text: HueRunner.message
            anchors.margins: 20
            anchors.left: parent.left
            anchors.right: parent.right
            horizontalAlignment: Label.AlignHCenter
            verticalAlignment: Label.AlignVCenter
            wrapMode: Label.Wrap
        }

        Button {
            id: button
            text: qsTr("Connect!")
            onClicked: HueRunner.connectToBridge()
        }
    }
}
