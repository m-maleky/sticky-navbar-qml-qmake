import QtQuick 2.12
import QtQuick.Controls 2.12

Button {
    property string textContent : "none"
    property int backgroundWidth : 50
    property string unread:"0"
    property bool active:false
    property color activeColor: "white"
    property color unActiveColor: "#63606d"
    id:root

    MouseArea{
        hoverEnabled: true
        anchors.fill:parent
        onEntered: unActiveColor="white"
        onExited: unActiveColor="#63606d"
        onClicked: {
            var allButtons = headerButtonsRow.children
            for(var i=0;i<allButtons.length;i++){
                allButtons[i].active=false
            }
            active=true
        }
    }

    Row{
        width: parent.width - 33
        anchors.centerIn: root
        spacing: 10
        Text {
            height:parent.height
            text: textContent
            font.pointSize: 14
            color: root.down || !active ? unActiveColor : activeColor
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
        Rectangle{
            visible: unread=="0"? false : true
            color:"#1f2229"
            width:25
            height:25
            radius:height/2
            Text {
                height:parent.height
                text: unread
                anchors.centerIn: parent
                color: root.down || !active ? unActiveColor : activeColor
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }
    }
    background: Rectangle {
        implicitWidth: unread=="0" ? backgroundWidth : backgroundWidth + 30
        implicitHeight: 40
        border.color: root.down || !active ? unActiveColor : activeColor
        color:'black'
        border.width: 1
        radius: height/2
    }
}

