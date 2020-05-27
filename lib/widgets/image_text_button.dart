import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../theme.dart';

class ImageTextButton extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String targetedScreen;
  final int type; // to control the height of the button
  final bool isLanScape;

  const ImageTextButton(
      {Key key,
      @required this.title,
      @required this.imageUrl,
      @required this.targetedScreen,
      @required this.type,
      this.isLanScape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, targetedScreen);
      },
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: type == 1
              ? isLanScape
                  ? MediaQuery.of(context).size.height * .33
                  : MediaQuery.of(context).size.height * .22
              : MediaQuery.of(context).size.height * .275,
          width: isLanScape
              ? MediaQuery.of(context).size.width * .225
              : MediaQuery.of(context).size.width * .45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: kColor1,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 10)],
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    )),
                Expanded(
                  flex: 1,
                  child: Text(
                    title,
                    textAlign: TextAlign.end,
                    style: kTextStyleButtonTitle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
