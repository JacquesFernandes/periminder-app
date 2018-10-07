import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FacePicker extends StatefulWidget {
  @override
  _FacePickerState createState() => _FacePickerState();
}

class _FacePickerState extends State<FacePicker> {

  List<Widget> get _children {
    List<Widget> children =[];
    // TODO: Add code ot dynamically switch between the photo picker and the photo here
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: this._children,
      ),
    );
  }
}
