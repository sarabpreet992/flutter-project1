import 'package:flutter/material.dart';
import 'package:new_drawer/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Awesome app',
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: Homepage(),
  ));
}
