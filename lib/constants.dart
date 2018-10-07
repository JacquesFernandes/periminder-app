import "package:flutter/material.dart";

abstract class Constants {

  static TextEditingController generateTextEditingController([String value = ""]) => new TextEditingController.fromValue(
    new TextEditingValue(
      text: value,
      composing: TextRange.collapsed(value.length)
    )
  );

}