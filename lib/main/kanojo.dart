import 'package:flutter/material.dart';
import 'package:rental_girlfriend/constant.dart';
// import 'package:flutter_svg/svg.dart';
import 'iconcard.dart';

class Kanojo extends StatelessWidget {
  const Kanojo({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: S0color,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: kDefaultPadding * 1,
          top: kDefaultPadding * 1,
        ),
        child: SizedBox(
          height: size.height * 0.5,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding * 4.5),
                  child: Column(
                    children: <Widget>[
                      IconCard(
                        icon: "assets/icons/star.svg",
                        teks: "4.5",
                      ),
                      IconCard(
                        icon: "assets/icons/heart_fill.svg",
                        teks: "100K",
                      ),
                      IconCard(
                        icon: "assets/icons/flag-jp.svg",
                        teks: "JP",
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Flexible(
                        child: Container(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: kDefaultPadding * 10.0),
                        alignment: Alignment.bottomRight,
                        height: size.height * 0.43,
                        width: size.width * 0.75,
                        decoration: BoxDecoration(
                          color: P1color.withOpacity(0.9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(63),
                            bottomLeft: Radius.circular(63),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 40,
                              color: P0color.withOpacity(0.29),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Flexible(
                        child: Container(),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: kDefaultPadding * 10.0),
                        alignment: Alignment.bottomRight,
                        height: size.height * 0.4,
                        width: size.width * 0.75,
                        decoration: BoxDecoration(
                          // color: P0color.withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(63),
                            bottomLeft: Radius.circular(63),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(0, 10),
                          //     blurRadius: 60,
                          //     color: P0color.withOpacity(0.29),
                          //   ),
                          // ],
                          image: DecorationImage(
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/scenery.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: kDefaultPadding * 10.0),
                    height: size.height * 0.8,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        image: AssetImage("assets/images/img.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
