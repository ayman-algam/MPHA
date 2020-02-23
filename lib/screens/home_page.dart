import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return OAppBar(
      oAppBarLable: ksHomePage,
      oAppBarChild: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                // todo Manasic AlHajj
                Expanded(
                  child: MyCardView(
                    lable: ksManasicAlhajj,
                    imageLocation: "src/images/manasic.png",
                    onPress: () {
                      setState(
                        () {
                          Navigator.pushNamed(context, 'manasic_alhajj');
                        },
                      );
                    },
                  ),
                ),

                // todo  Manasic AlOmrah
                Expanded(
                  child: MyCardView(
                    lable: ksManasicAlOmrah,
                    imageLocation: "src/images/manasic.png",
                    onPress: () {
                      setState(
                        () {
                          Navigator.pushNamed(context, 'manasic_alomrah');
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                // todo Adab AlZiarah
                Expanded(
                  child: MyCardView(
                    lable: ksAdabAlZiarah,
                    imageLocation: "src/images/adab_elziara.jpg",
                    onPress: () {
                      setState(
                        () {
                          Navigator.pushNamed(context, 'adab_alziarah');
                        },
                      );
                    },
                  ),
                ),

                // todo Azkar Mostahaba
                Expanded(
                  child: MyCardView(
                    lable: ksAzkarMostahaba,
                    imageLocation: "src/images/doaa.png",
                    onPress: () {
                      setState(
                        () {
                          Navigator.pushNamed(context, 'azkar_mostahaba');
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                // todo Hajj Helps
                Expanded(
                  child: MyCardView(
                    lable: ksHajjHelp,
                    imageLocation: "src/images/help.png",
                    onPress: () {
                      setState(
                        () {
                          Navigator.pushNamed(context, 'hajj_help');
                        },
                      );
                    },
                  ),
                ),

                // todo Pray Time
                Expanded(
                  child: MyCardView(
                    lable: ksPrayTime,
                    imageLocation: "src/images/pray_time.png",
                    onPress: () {
                      setState(
                        () {
                          Navigator.pushNamed(context, 'pray_time');
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
