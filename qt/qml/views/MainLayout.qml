import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

SplitView {
    id: splitView
    spacing: 0

    Sidebar {
        SplitView.preferredWidth: splitView.width / 5
        SplitView.fillHeight: true
    }

    ChartView {
        SplitView.fillWidth: true
        SplitView.fillHeight: true
    }
}