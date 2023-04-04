import QtQuick 2.12

Rectangle{
    property color backgroundColor:"white"

    height:100
    width:(parent.width - 15) / 2
    color:backgroundColor
    radius:30
    Item{
        id:topLines
        anchors.horizontalCenter: parent.horizontalCenter
        height:12
        width:parent.width
        Rectangle{
            width:40
            height:2
            color:"black"
            anchors.margins: 3
            anchors.top:parent.top
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Rectangle{
            width:20
            height:2
            color:"black"
            anchors.margins: 6
            anchors.top:parent.top
            anchors.horizontalCenter: parent.horizontalCenter
        }

    }


}

