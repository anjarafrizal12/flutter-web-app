import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "Initial Text";
  String titleText = "Peta Persebaran";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new Container(child: new DrawerHeader(child: new Container())),
              new Container (
                child: new Column(
                    children: <Widget>[
                      new ListTile(leading: new Icon(Icons.info),
                          onTap:(){
                            Navigator.pop(context);
                              setState((){
                                text = "info pressed";
                                titleText = "Info Page";
                              });
                          }
                      ),
                      new ListTile(leading: new Icon(Icons.save),
                          onTap:(){
                            Navigator.pop(context);
                            setState((){
                              text = "save pressed";
                              titleText = "Save Page";
                            });
                          }
                      ),
                      new ListTile(leading: new Icon(Icons.settings),
                          onTap:(){
                            Navigator.pop(context);
                            setState((){
                              text = "settings pressed";
                              titleText = "Settings Page";
                            });
                          }
                      ),

                    ]
                ),
              )
            ],
          ),
        ),
        appBar: new AppBar(title: new Text(titleText),),
        body: new Center(child: new Text((text)),
        ));
  }
}