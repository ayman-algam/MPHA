import 'package:flutter/material.dart';

const Color kcTextSplash = Color(0xFFf3eab7);
const Color kcPrimaryColor = Color(0xFF5B5C5E);

const String ksManasicAlhajj = "مناسك الحج";
const String ksManasicAlOmrah = "مناسك العمرة";
const String ksAdabAlZiarah= "آداب الزيارة";
const String ksAzkarMostahaba= "أذكار مستحبة";
const String ksAzkarAlSabah= "أذكار الصباح";
const String ksAzkarAlMasa= "أذكار المساء";
const String ksHomePage= "الصفحة الرئيسة";

Widget sizedBoxHeight(int heightValue) {
  return SizedBox(
    height: heightValue.toDouble(),
  );
}

Widget sizedBoxWidth(int widthValue) {
  return SizedBox(
    width: widthValue.toDouble(),
  );
}

final ksTextStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    fontFamily: 'Pacifico',
    color: Color(0xFFf3eab7));

final ksTextStyle2 = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  fontFamily: 'SourceSansPro',
  color: kcTextSplash,
  letterSpacing: 2.0,
);

class MyCardView extends StatelessWidget {
  MyCardView({this.myChild, this.onPress, this.cardColor});

  final Widget myChild;
  final Function onPress;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: myChild,
        ),
      ),
    );
  }
}

class ImageTextContainer extends StatelessWidget {
  ImageTextContainer({this.imageLocation, this.lable});

  final String imageLocation;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(imageLocation),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            lable,
            style: ksTextStyle2.copyWith(
              fontSize: 20.0,
              letterSpacing: 1,
              color: kcPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}


class OSliverAppBar extends StatelessWidget {

  OSliverAppBar({this.lable, this.child, this.backgroundImagePath});

  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  final String lable;
  final String backgroundImagePath;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: this._pinned,
              snap: this._snap,
              floating: this._floating,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  lable,
                ),
                background: Image.asset(
                  backgroundImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverFillRemaining(
              child: child,
            )
          ],
        ),
      ),
    );
  }
}