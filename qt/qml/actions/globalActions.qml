import QtQuick
import QtQuick.Controls

Item{
    property alias fileNewAction: fileNewAction
    Action {
        id: fileNewAction
        text: "&New"
        shortcut: StandardKey.New
        onTriggered: backend.file.new_file()
    }
    property alias fileOpenAction: fileOpenAction
    Action {
        id: fileOpenAction
        text: "&Open..."
        shortcut: StandardKey.Open
        onTriggered: backend.file.open_file()
    }
    property alias fileSaveAction: fileSaveAction
    Action {
        id: fileSaveAction
        text: "&Save"
        shortcut: StandardKey.Save
        onTriggered: backend.file.save_file()
    }
    property alias fileSaveAsAction: fileSaveAsAction
    Action {
        id: fileSaveAsAction
        text: "Save &As..."
        shortcut: StandardKey.SaveAs
        onTriggered: backend.file.save_file_as()
    }
    property alias fileExitAction: fileExitAction
    Action {
        id: fileExitAction
        text: "E&xit"
        shortcut: StandardKey.Quit
        onTriggered: backend.file.exit_file()
    }

    // --- Help Actions ---
    property alias helpContentsAction: helpContentsAction
    Action {
        id: helpContentsAction
        text: "View &Help"
        shortcut: StandardKey.HelpContents
        onTriggered: backend.help.help()
    }
    property alias helpAboutAction: helpAboutAction
    Action {
        id: helpAboutAction
        text: "&About..."
        onTriggered: backend.help.about()
    }
}