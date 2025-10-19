import QtQuick
import QtQuick.Controls
import "./components"

ApplicationWindow {
    visibility: Window.Maximized
    width: 300
    height: 200
    title: "Trade Analyst"
    header: TopToolBar {
        id: topToolBar
        objectName: "topToolBar"
    }

    Item {
        id: root
        anchors.fill: parent
    }
}
