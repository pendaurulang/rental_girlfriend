import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_girlfriend/constant.dart';
import 'testidata.dart';
// import '../config/size_config.dart';

class RevCard extends StatelessWidget {
  final Testimoni testimoni;
  final Function press;
  const RevCard({Key key, this.testimoni, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
        right: kDefaultPadding,
        left: kDefaultPadding,
      ),
      child: Container(
        height: size.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: S1color,
          // color: P0color.withOpacity(0.3),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: kDefaultPadding * 0.6,
            left: kDefaultPadding * 0.6,
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding * 0.5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding * 0.3),
                      child: SvgPicture.asset("assets/icons/user.svg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding * 0.5),
                      child: Text(testimoni.name),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding * 0.5),
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        width: size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(kDefaultPadding * 0.2),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: SvgPicture.asset(
                                  "assets/icons/star.svg",
                                  alignment: Alignment.topLeft,
                                  width: size.width * 0.05,
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: kDefaultPadding)),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: P1color,
                                    // color: P0color.withOpacity(0.3),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    "${testimoni.star}",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: kDefaultPadding)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding * 0.5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: S0color,
                          // color: P0color.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: SizedBox(
                          width: size.width * 0.44,
                          child: Align(
                            child: Padding(
                              padding:
                                  const EdgeInsets.all(kDefaultPadding * 0.1),
                              child: Text(
                                testimoni.description,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
