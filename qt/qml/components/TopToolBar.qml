import QtQuick
import QtQuick.Controls

MenuBar {
    property QtObject actions: null

    // --- 2. Build the visual menu structure ---
    // These menus are now just simple links to the Actions above.

    Menu {
        title: "&File"

        MenuItem { action: actions.fileNewAction }
        MenuItem { action: actions.fileOpenAction }
        MenuItem { action: actions.fileSaveAction }
        MenuItem { action: actions.fileSaveAsAction }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions.filePrintAction }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions.fileExitAction }
    }

    Menu {
        title: "&Edit"

        MenuItem { action: actions.editUndoAction }
        MenuItem { action: actions.editRedoAction }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions.editCutAction }
        MenuItem { action: actions.editCopyAction }
        MenuItem { action: actions.editPasteAction }
        MenuItem { action: actions.editDeleteAction }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions.editFindAction }
        MenuItem { action: actions.editPrefsAction }
    }

    Menu {
        title: "&View"

        MenuItem { action: actions.viewZoomInAction }
        MenuItem { action: actions.viewZoomOutAction }
        MenuItem { action: actions.viewZoomResetAction }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions.viewStatusBarAction }
        MenuItem { action: actions.viewFullScreenAction }
    }

    Menu {
        title: "&Help"

        MenuItem { action: actions.helpContentsAction }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions.helpAboutAction }
    }
}