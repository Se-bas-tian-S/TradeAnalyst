import QtQuick
import QtQuick.Controls

MenuBar {
    property QtObject actions: null
    Menu {
        title: "&File"

        MenuItem { action: actions ? actions.fileNewAction : null }
        MenuItem { action: actions ? actions.fileOpenAction : null }
        MenuItem { action: actions ? actions.fileSaveAction : null }
        MenuItem { action: actions ? actions.fileSaveAsAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.fileExitAction : null }
    }

    Menu {
        title: "&Help"

        MenuItem { action: actions ? actions.helpContentsAction : null }
        ToolSeparator {orientation: Qt.Horizontal}
        MenuItem { action: actions ? actions.helpAboutAction : null }
    }
}