import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color kcTextSplash = Color(0xFFf3eab7);
const Color kcPrimaryColor = Color(0xFF5B5C5E);

const String ksHomePage= "الصفحة الرئيسة";
const String ksManasicAlhajj = "مناسك الحج";
const String ksManasicAlOmrah = "مناسك العمرة";
const String ksAdabAlZiarah= "آداب الزيارة";
const String ksAzkarMostahaba= "أذكار مستحبة";
const String ksAzkarAlSabah= "أذكار الصباح";
const String ksAzkarAlMasa= "أذكار المساء";
const String ksAzkarBaadAlSalah= "أذكار بعد الصلاة";
const String ksAzkar= "أذكار";
const String ksQuran= "القرآن الكريم";
const String ksSebha= "سبحة";
const String ksHajjHelp= "دليل الحاج";
const String ksPrayTime= "أوقات الصلاة";



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
  MyCardView({this.lable, this.imageLocation, this.onPress});

  final String lable;
  final String imageLocation;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
              boxShadow: [new BoxShadow(
                color: Colors.black,
                blurRadius: 10.0,
              ),]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
        ),
      ),
    );
  }
}

class OAppBar extends StatelessWidget {

  OAppBar({this.oAppBarChild, this.oAppBarLable});

  final String oAppBarLable;
  final Widget oAppBarChild;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Text(
            oAppBarLable,
          style: TextStyle(
            color: kcTextSplash,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kcPrimaryColor,
      ),
      backgroundColor: kcPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: oAppBarChild,
      ),
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
            SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverAppBar(
                centerTitle: true,
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