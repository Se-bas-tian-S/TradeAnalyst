import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

SplitView {
    id: splitView
    spacing: 0
    handle: Rectangle {
        implicitWidth: 3
        color: SplitHandle.pressed ? "#73869b" : "#242424"
        border.color: Qt.lighter(color, 1.2)
    }

    Sidebar {
        SplitView.preferredWidth: splitView.width / 5
        SplitView.fillHeight: true
    }

    ChartView {
        SplitView.fillWidth: true
        SplitView.fillHeight: true
    }
}