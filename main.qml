import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: root
    minimumWidth: 360
    width: 360
    maximumWidth: 500
    height: 480
    visible: true
    title: qsTr("To Do")
    color: "#0b090c"
    Rectangle{ id:navbarContainerTop; width:parent.width; height:60; color:"#0b090c"; }
    ScrollView{
        id:windowScroll
        width:parent.width
        height:parent.height
        property real pixelPosition :ScrollBar.vertical.position * parent.height
        onPixelPositionChanged:{
            scrollView.parent= pixelPosition>67 ? navbarContainerTop : navbarContainer
            if(pixelPosition>67){
                navbarContainerTop.z=10;
                scrollView.anchors.top = navbarContainerTop.top;
                navbarContainerTop.opacity=1
            }
            else{
                scrollView.anchors.top = navbarContainer.top
                navbarContainerTop.z=0
                navbarContainerTop.opacity=0
            }
        }
        Column{
            id:windowColumn
            width:root.width - 5
            spacing:1

            Text {
                id: header
                width: parent.width
                text: qsTr("My<br/>Notes")
                color:"#ebf9ff"
                font.pointSize: 30
                height:125
                topPadding: 20
                bottomPadding: 17
                leftPadding: 10
            }
            Rectangle{
                id:navbarContainer
                width: parent.width
                height: 60
                color:"#0b090c"
                ScrollView {
                    id: scrollView
                    width: parent.width
                    height: 60
                    z:10
                    opacity:1
                    Row {
                        spacing: 8
                        padding: 10
                        id: headerButtonsRow
                        HeaderButton{
                            textContent: "All"
                            backgroundWidth:55
                            unread:"12"
                            active:true
                        }
                        HeaderButton{
                            textContent: "All"
                            backgroundWidth:55
                            unread:"0"
                            active:false
                        }
                        HeaderButton{
                            textContent: "Important"
                            backgroundWidth:120
                            unread:"0"
                            active:false
                        }
                        HeaderButton{
                            textContent: "Important"
                            backgroundWidth:120
                            unread:"5"
                            active:false
                        }
                        HeaderButton{
                            textContent: "Important"
                            backgroundWidth:120
                            unread:"0"
                            active:false
                        }
                    }
                }
            }
            Column{
                id:main
                width:parent.width
                spacing:5
                Row{
                    spacing: 5
                    padding: 5
                    width:parent.width
                    Item50{
                        backgroundColor: "#f5816a"
                        Column{
                            width:parent.width
                            anchors.top:parent.top
                            anchors.topMargin: 12
                            Row{
                                width:parent.width
                                Text{
                                    text:"Plan for<br/>The Day"
                                    font.pixelSize: 20
                                    leftPadding: 20
                                }
                                Item{
                                    width:50
                                    height:50
                                    anchors.right:parent.right
                                    anchors.rightMargin: 10
                                    Rectangle{
                                        width:45
                                        height:45
                                        color:"#e3795f"
                                        radius: width/2
                                        anchors.centerIn: parent
                                    }
                                }
                            }
                        }

                    }
                    Item50{
                        backgroundColor: "#f0e150"
                    }
                }
                Item100{
                    backgroundColor: "lightBlue"
                }
                Item100{
                    backgroundColor: "lightGreen"
                }
                Item100{
                    backgroundColor: "purple"
                }
                Item100{
                    backgroundColor: "pink"
                }


            }
        }

    }


}

