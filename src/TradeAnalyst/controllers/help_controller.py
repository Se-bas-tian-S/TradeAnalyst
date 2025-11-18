from PySide6.QtCore import QObject, Slot

class HelpController(QObject):
    def __init__(self):
        super().__init__()
    
    @Slot()
    def help(self):
        print("HelpController: Help...")
    
    @Slot()
    def about(self):
        print("HelpController: About...")