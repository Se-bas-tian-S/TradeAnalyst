import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

ToolBar {
    id: root

    signal aboutClicked()

    RowLayout {
        anchors.fill: parent

        ToolButton {
            text: qsTr("About")
            onClicked: root.aboutClicked()
        }
    }
}
