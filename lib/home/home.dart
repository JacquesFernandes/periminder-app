import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import '../app_drawer/app_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  BuildContext subContext;
  bool pressedBack = false;

  void showExitSnackBar() {
    SnackBar snackBar = new SnackBar(
      content: new Text("Press back again to quit the app."),
      backgroundColor: Colors.grey,
    );
    Scaffold.of(this.subContext).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home"),
        ),
        drawer: new AppDrawer(),
        body: new Container(
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              new Builder(
                builder: (BuildContext subContext) {
                  this.subContext = subContext;
                  return new Container();
                },
              ),
              new ListTile(
                title: new Text("Hola!"),
              )
            ],
          ),
        ),
      ),
      onWillPop: () async {
        if(this.pressedBack){
          exit(0);
        }
        else{
          this.pressedBack = true;
          this.showExitSnackBar();
          Timer(new Duration(seconds: 5), () {
            print("resetting pressedBack");
            this.pressedBack = false;
          });
        }
      }
    );
  }
}
