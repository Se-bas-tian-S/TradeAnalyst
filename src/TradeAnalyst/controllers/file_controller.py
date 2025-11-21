from PySide6.QtCore import QObject, Slot
from PySide6.QtWidgets import QFileDialog
import pandas as pd

class FileController(QObject):
    def __init__(self):
        super().__init__()

    @Slot()
    def new_file(self):
        print("FileController: Creating new file...")

    @Slot()
    def open_file(self):
        file_name, _ = QFileDialog.getOpenFileName(None, "Open CSV File", "", "CSV files (*.csv)")
        if file_name:
            try:
                # Populate self.df
                df = pd.read_csv(file_name, encoding="utf-16")
                print(df)
            except Exception as e:
                print(f"Failed to load CSV: {e}")
    
    @Slot()
    def save_file(self):
        print("FileController: Saving content...")
        
    @Slot()
    def save_file_as(self):
        print("FileController: Saving content as...")
        
    @Slot()
    def file_exit(self):
        print("FileController: Exit file...")