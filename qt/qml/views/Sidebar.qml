import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Pane {
    id: sidebar
    padding: 20
    GridLayout {
        width: sidebar.availableWidth
        columns: 2
        rowSpacing: 10
        columnSpacing: 10

        Label {
            text: "Filter:"
        }
        TextField {
            placeholderText: "Type to apply filter"
            Layout.fillWidth: true
        }

        CheckBox {
            text: "Enable Filter"
            checked: false
            onCheckedChanged: { console.log("Box is now: ", checked)}
            Layout.columnSpan: 2
            Layout.fillWidth: true
        }

        ToolSeparator {
            orientation: Qt.Horizontal
            topPadding: 10
            bottomPadding: 10
            Layout.columnSpan: 2
            Layout.fillWidth: true
        }

        Label {
            text: "Plot Mode:"
        }
        ComboBox {
            model: ["Individual", "Cumulative"]
            Layout.fillWidth: true
        }
    }
}