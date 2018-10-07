import 'package:flutter/material.dart';

class NewFace extends StatefulWidget {
  @override
  _NewFaceState createState() => _NewFaceState();
}

class _NewFaceState extends State<NewFace> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add New Face"),
      ),
      body: new Container(
        child: new ListView(
          shrinkWrap: true,
          addAutomaticKeepAlives: true,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
