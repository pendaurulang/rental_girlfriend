import 'package:flutter/material.dart';
import 'package:rental_girlfriend/constant.dart';
import 'package:rental_girlfriend/review/testibuilder.dart';

class TestiPage extends StatelessWidget {
  const TestiPage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: P2color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(kDefaultPadding * 0.3),
              ),
              Container(
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: S0color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding * 0.3),
                  child: Text(
                    "Review",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(kDefaultPadding * 0.3),
              ),
              TestiItem(
                size: size,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
