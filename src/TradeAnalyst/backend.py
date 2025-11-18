from PySide6.QtCore import QObject, Property
from src.TradeAnalyst.controllers.file_controller import FileController
from src.TradeAnalyst.controllers.help_controller import HelpController

class Backend(QObject):
    def __init__(self):
        super().__init__()
        self.file_ctrl = FileController()
        self.help_ctrl = HelpController()

    # Use Q_PROPERTY to expose the sub-objects to QML
    @Property(QObject, constant=True)
    def file(self):
        return self.file_ctrl
    
    @Property(QObject, constant=True)
    def help(self):
        return self.help_ctrl
