import QtQuick

QtObject{
    Action {
        id: fileNewAction
        text: "&New"
        shortcut: StandardKey.New
        onTriggered: console.log("File > New triggered")
    }
    Action {
        id: fileOpenAction
        text: "&Open..."
        shortcut: StandardKey.Open
        onTriggered: console.log("File > Open triggered")
    }
    Action {
        id: fileSaveAction
        text: "&Save"
        shortcut: StandardKey.Save
        onTriggered: console.log("File > Save triggered")
    }
    Action {
        id: fileSaveAsAction
        text: "Save &As..."
        shortcut: StandardKey.SaveAs
        onTriggered: console.log("File > Save As triggered")
    }
    Action {
        id: filePrintAction
        text: "&Print..."
        shortcut: StandardKey.Print
        onTriggered: console.log("File > Print triggered")
    }
    Action {
        id: fileExitAction
        text: "E&xit"
        shortcut: StandardKey.Quit // Cross-platform 'Quit' shortcut
        onTriggered: Qt.quit() // Correctly quits the application
    }

    // --- Edit Actions ---
    Action {
        id: editUndoAction
        text: "&Undo"
        shortcut: StandardKey.Undo
        onTriggered: console.log("Edit > Undo triggered")
    }
    Action {
        id: editRedoAction
        text: "&Redo"
        shortcut: StandardKey.Redo
        onTriggered: console.log("Edit > Redo triggered")
    }
    Action {
        id: editCutAction
        text: "Cu&t"
        shortcut: StandardKey.Cut
        onTriggered: console.log("Edit > Cut triggered")
    }
    Action {
        id: editCopyAction
        text: "&Copy"
        shortcut: StandardKey.Copy
        onTriggered: console.log("Edit > Copy triggered")
    }
    Action {
        id: editPasteAction
        text: "&Paste"
        shortcut: StandardKey.Paste
        onTriggered: console.log("Edit > Paste triggered")
    }
    Action {
        id: editDeleteAction
        text: "De&lete"
        shortcut: StandardKey.Delete
        onTriggered: console.log("Edit > Delete triggered")
    }
    Action {
        id: editFindAction
        text: "&Find..."
        shortcut: StandardKey.Find
        onTriggered: console.log("Edit > Find triggered")
    }
    Action {
        id: editPrefsAction
        text: "Preferences..."
        // No standard shortcut, so we omit it
        onTriggered: console.log("Edit > Preferences triggered")
    }

    // --- View Actions ---
    Action {
        id: viewZoomInAction
        text: "Zoom &In"
        shortcut: StandardKey.ZoomIn // e.g., Ctrl++
        onTriggered: console.log("View > Zoom In triggered")
    }
    Action {
        id: viewZoomOutAction
        text: "Zoom &Out"
        shortcut: StandardKey.ZoomOut // e.g., Ctrl+-
        onTriggered: console.log("View > Zoom Out triggered")
    }
    Action {
        id: viewZoomResetAction
        text: "Reset Zoom"
        shortcut: StandardKey.ZoomReset // e.g., Ctrl+0
        onTriggered: console.log("View > Reset Zoom triggered")
    }
    Action {
        id: viewStatusBarAction
        text: "Show Status Bar"
        checkable: true // This action is a toggle
        checked: true   // Default to on
        onTriggered: console.log("View > Show Status Bar toggled: " + checked)
    }
    Action {
        id: viewFullScreenAction
        text: "Full Screen"
        shortcut: StandardKey.FullScreen // e.g., F11
        checkable: true
        onTriggered: console.log("View > Full Screen toggled: " + checked)
    }

    // --- Help Actions ---
    Action {
        id: helpContentsAction
        text: "View &Help"
        shortcut: StandardKey.HelpContents // e.g., F1
        onTriggered: console.log("Help > View Help triggered")
    }
    Action {
        id: helpAboutAction
        text: "&About..."
        onTriggered: console.log("Help > About triggered")
    }
}