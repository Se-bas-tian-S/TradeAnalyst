import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQml import QQmlApplicationEngine
from src.TradeAnalyst.backend import Backend


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    backend = Backend()

    engine.rootContext().setContextProperty("backend", backend)
    engine.load("qt/qml/main.qml")
    

    if not engine.rootObjects():
        print("Failed to load Qml application")
        sys.exit(-1)
    sys.exit(app.exec())
