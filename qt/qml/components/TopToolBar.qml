import QtQuick
import QtQuick.Controls

MenuBar {
    property QtObject actions: null

    // --- 2. Build the visual menu structure ---
    // These menus are now just simple links to the Actions above.

    Menu {
        title: "&File"

        MenuItem { action: actions ? actions.fileNewAction : null }
        MenuItem { action: actions ? actions.fileOpenAction : null }
        MenuItem { action: actions ? actions.fileSaveAction : null }
        MenuItem { action: actions ? actions.fileSaveAsAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.filePrintAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.fileExitAction : null }
    }

    Menu {
        title: "&Edit"

        MenuItem { action: actions ? actions.editUndoAction : null }
        MenuItem { action: actions ? actions.editRedoAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.editCutAction : null }
        MenuItem { action: actions ? actions.editCopyAction : null }
        MenuItem { action: actions ? actions.editPasteAction : null }
        MenuItem { action: actions ? actions.editDeleteAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.editFindAction : null }
        MenuItem { action: actions ? actions.editPrefsAction : null }
    }

    Menu {
        title: "&View"

        MenuItem { action: actions ? actions.viewZoomInAction : null }
        MenuItem { action: actions ? actions.viewZoomOutAction : null }
        MenuItem { action: actions ? actions.viewZoomResetAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.viewStatusBarAction : null }
        MenuItem { action: actions ? actions.viewFullScreenAction : null }
    }

    Menu {
        title: "&Help"

        MenuItem { action: actions ? actions.helpContentsAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.helpAboutAction : null }
    }
}