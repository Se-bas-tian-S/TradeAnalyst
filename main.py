import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQml import QQmlApplicationEngine
from src.TradeAnalyst import resources
from PySide6.QtCore import Slot, QObject


@Slot()
def on_about_clicked():
    print("About")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load("qt/qml/main.qml")

    if not engine.rootObjects():
        print("Failed to load Qml application")
        sys.exit(-1)

    root_window = engine.rootObjects()[0]
    top_tool_bar = root_window.findChild(QObject, "topToolBar")
    if top_tool_bar:
        top_tool_bar.aboutClicked.connect(on_about_clicked)
    else:
        print("Couldn't find 'top_tool_bar' in QML")
    sys.exit(app.exec())
