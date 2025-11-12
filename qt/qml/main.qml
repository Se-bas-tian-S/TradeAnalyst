// main.qml (Corrected)
import QtQuick
import QtQuick.Controls
import "./components" // Assuming TopToolBar.qml is in this folder

ApplicationWindow {
    id: rootWindow

    // Use a more standard default size for when it's not maximized
    width: 1024
    height: 768
    visibility: Window.Maximized
    title: "Trade Analyst"

    // --- THE FIX ---
    // The property is 'menuBar' (lowercase 'm')
    menuBar: TopToolBar {
        id: topToolBar
        objectName: "topToolBar"

    }

    // --- Optional but Recommended: An Icon ToolBar ---
    // This re-uses the Actions from TopToolBar.qml
    /*toolBar: ToolBar {
        id: mainToolBar

        // We will assign icons in TopToolBar.qml
        // and they will appear here automatically.
        ToolButton { action: topToolBar.fileNewAction }
        ToolButton { action: topToolBar.fileOpenAction }
        ToolButton { action: topToolBar.fileSaveAction }
        ToolSeparator {}
        ToolButton { action: topToolBar.editUndoAction }
        ToolButton { action: topToolBar.editRedoAction }
        ToolSeparator {}
        ToolButton { action: topToolBar.editCutAction }
        ToolButton { action: topToolBar.editCopyAction }
        ToolButton { action: topToolBar.editPasteAction }
    }*/
}