  import 'package:flutter/material.dart';
  import 'circularImage.dart';


  class MenuDashBoard extends StatefulWidget {
  @override
  _MenuDashBoardState createState() => _MenuDashBoardState();
}

class _MenuDashBoardState extends State<MenuDashBoard> {

    bool isMenuClosed = true;
    double screenWidth;

    @override
    Widget build(BuildContext context) {
      
      Size size = MediaQuery.of(context).size;
      screenWidth = size.width;

      return Scaffold(
        backgroundColor: Colors.grey[850],
        body: Stack(
          children: <Widget>[
            menu(context),
            dashboard(context)
          ],
        ),
      );
    }

    Widget menu(context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, screenWidth*0.15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.grey[850],
                child: Align(
                  alignment: Alignment.center,
                  child: circularImage(),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            decoration: new BoxDecoration(
                                color: Color.fromRGBO(218, 107, 107, 1),
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(80.0))
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.headset, color: Colors.white, size: 50,),
                                  Text('Listen', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            color: Color.fromRGBO(211, 96, 96, 1),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.satellite, color: Colors.white, size: 50,),
                                  Text('Browse', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22
                                  ))
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            decoration: new BoxDecoration(
                                color: Color.fromRGBO(211, 96, 96, 1),
                                borderRadius: new BorderRadius.only(
                                    topRight: const Radius.circular(80.0))
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.assignment, color: Colors.white, size: 50,),
                                  Text('Assignment', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            color: Color.fromRGBO(218, 107, 107, 1),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.settings, color: Colors.white, size: 50,),
                                  Text('Settings', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22
                                  ))
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            )
          ],
        ),
      );
    }

    Widget dashboard(context) {
      return AnimatedPositioned(
        //top: isMenuClosed? 0 : 100,
        //bottom: isMenuClosed? 0 : 100,
        top: 0,
        bottom: 0,
        left: isMenuClosed? 0 : screenWidth - screenWidth*0.15,
        right: isMenuClosed? 0 : -90,
        duration: Duration(milliseconds: 300),
        child: Material(
          elevation: 8,
          color: Colors.grey[850],
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(child: Icon(Icons.menu, color: Colors.white, size: 40,),
                      onTap: () {
                        setState(() {
                          isMenuClosed = !isMenuClosed;
                        });
                      },
                    ),
                    Text("Welcome",
                        style: TextStyle(fontSize: 22, color: Colors.white)
                    ),
                    Icon(Icons.settings, color: Colors.white, size: 40,)
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
}


