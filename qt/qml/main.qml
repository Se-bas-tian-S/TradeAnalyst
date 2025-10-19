import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visibility: Window.Maximized
    width: 300
    height: 200
    title: "Trade Analyst"
    header: TopToolBar {
        id: topToolBar
    }

    Connections {
        target: topToolBar
        onAboutClicked: {
            console.log("About was clicked!")
        }
    }

    Item {
        id: root
        anchors.fill: parent
    }
}
