import 'package:flutter/material.dart';
import 'package:rental_girlfriend/main/home.dart';

void main() {
  runApp(new MaterialApp(
    title: "Rental Girlfriends",
    home: new Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
