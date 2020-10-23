import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental_girlfriend/main/kanojo.dart';
import 'package:rental_girlfriend/constant.dart';
import 'package:rental_girlfriend/config/name.dart';
import 'package:rental_girlfriend/review/testipage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/logo.svg"),
          onPressed: () {},
        ),
        title: Center(child: Text("Kanojo Okarisimasu")),
        backgroundColor: P0color.withOpacity(0.90),
      ),
      body: Column(
        children: <Widget>[
          Kanojo(
            size: size,
          ),
          NamePage(
            size: size,
          ),
          TestiPage(
            size: size,
          )
        ],
      ),
    );
  }
}
