import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home/home.dart';
import '../new_face/new_face.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  ListTile generateItem(Widget routeGenerator(), {String title="", String subTitle="", Icon leading, Icon trailing}) => new ListTile(
    title: new Text(title),
    subtitle: new Text(subTitle),
    leading: leading,
    trailing: trailing,
    onTap: () {
      Navigator.of(context).pop();
      Navigator.of(context).push(
        new MaterialPageRoute(
          builder: (BuildContext context) => routeGenerator(),
        )
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        shrinkWrap: true,
        children: <Widget>[
          new Container(
            child: new Card(
              child: new ListTile(
                title: new Text("Menu"),
              ),
            )
          ),
          this.generateItem(
            () => new Home(),
            title: "Home",
            leading: new Icon(FontAwesomeIcons.home),
          ),
          this.generateItem(
            () => new NewFace(),
            title: "Add New Face",
            leading: new Icon(FontAwesomeIcons.userPlus),
          ),
        ],
      ),
    );
  }
}
