import QtQuick
import QtQuick.Controls
import "./components"
import "./actions"
import "./views"

ApplicationWindow {
    id: rootWindow
    width: 1024
    height: 768
    visibility: Window.Maximized
    title: "Trade Analyst"

    property var globalActions: GlobalActions {}

    menuBar: TopToolBar {
        id: topToolBar
        objectName: "topToolBar"
        actions: globalActions
    }

    MainLayout {
        anchors.fill: parent
    }
}