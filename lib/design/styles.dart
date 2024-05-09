import 'package:flutter/material.dart';

const BorderRadius componentBorderRadius = BorderRadius.all(Radius.circular(5.0));

const InputDecorationTheme customInputDecorationTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
  border: OutlineInputBorder(
    borderRadius: componentBorderRadius,
  ),
  helperStyle: TextStyle(fontSize: 10.0),
  errorStyle: TextStyle(fontSize: 10.0),
);

const ButtonStyle customButtonStyle = ButtonStyle(
  shape: MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: componentBorderRadius,
    )
  ),
);

const ButtonStyle compactButtonStyle = ButtonStyle(
  padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0)),
  minimumSize: MaterialStatePropertyAll(Size(0.0, 0.0)),
);

const ButtonStyle compactIconButtonStyle = ButtonStyle(
  minimumSize: MaterialStatePropertyAll(Size(0.0, 0.0)),
);
