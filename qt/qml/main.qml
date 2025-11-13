// main.qml (Corrected)
import QtQuick
import QtQuick.Controls
import "./components"
import "./actions"

ApplicationWindow {
    id: rootWindow

    // Use a more standard default size for when it's not maximized
    width: 1024
    height: 768
    visibility: Window.Maximized
    title: "Trade Analyst"

    globalActions {
        id: globalActions
    }

    menuBar: TopToolBar {
        id: topToolBar
        objectName: "topToolBar"
        actions: globalActions
    }
}