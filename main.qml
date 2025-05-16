import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15 // Ensure this import is present
import QtQuick.Layouts 1.15  // Add this import to enable Layouts

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Material UI with QML"

    // Set the style to Material
    Material.theme: Material.Light
    Material.accent: Material.Teal

    // Create a simple layout
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        Button {
            text: "Click me"
            Layout.fillWidth: true
            onClicked: console.log("Button clicked!")
        }

        TextField {
            placeholderText: "Enter text"
            Layout.fillWidth: true
        }

        Switch {
            text: "Enable features"
            Layout.fillWidth: true
        }

        CheckBox {
            text: "Accept terms"
            Layout.fillWidth: true
        }
    }
}
