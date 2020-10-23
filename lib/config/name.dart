import 'package:flutter/material.dart';
import 'package:rental_girlfriend/constant.dart';

class NamePage extends StatelessWidget {
  const NamePage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.05,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding * 0.5),
        child: Text(
          "Mizuhara Chizuru",
          textAlign: TextAlign.center,
          style: TextStyle(
            wordSpacing: 2.0,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
            color: P0color,
          ),
        ),
      ),
    );
  }
}
