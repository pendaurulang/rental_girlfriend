import 'package:flutter/material.dart';
import 'package:rental_girlfriend/constant.dart';
import 'package:rental_girlfriend/review/testicard.dart';
import 'package:rental_girlfriend/review/testidata.dart';
import '../config/size_config.dart';

class TestiItem extends StatelessWidget {
  const TestiItem({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: Container(
          width: size.width * 0.9,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: S0color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: GridView.builder(
            itemCount: testimoni.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  SizeConfig.orientation == Orientation.landscape ? 2 : 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: SizeConfig.orientation == Orientation.landscape
                  ? SizeConfig.defaultSize * 2
                  : 0,
              childAspectRatio: 1.65,
            ),
            itemBuilder: (context, index) => RevCard(
              testimoni: testimoni[index],
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}
