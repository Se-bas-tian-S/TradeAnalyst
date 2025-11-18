from PySide6.QtCore import QObject, Slot

class FileController(QObject):
    def __init__(self):
        super().__init__()

    @Slot()
    def new_file(self):
        print("FileController: Creating new file...")

    @Slot()
    def open_file(self):
        print("FileController: Opening file...")
    
    @Slot()
    def save_file(self):
        print("FileController: Saving content...")
        
    @Slot()
    def save_file_as(self):
        print("FileController: Saving content as...")
        
    @Slot()
    def file_exit(self):
        print("FileController: Exit file...")