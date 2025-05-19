import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtQml import QQmlApplicationEngine

def run_app():
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Load the QML file
    engine.load('main.qml')

    # Check if the QML file loaded successfully
    if not engine.rootObjects():
        sys.exit(-1)

    # Start the event loop
    sys.exit(app.exec())

if __name__ == "__main__":
    # Check for the '--test' flag to run in test mode
    if '--test' in sys.argv:
        print("Running in test mode... Exiting immediately.")
        sys.exit(0)  # Exit immediately without running the GUI

    # Run the app normally if not in test mode
    run_app()
