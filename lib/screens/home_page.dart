import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              ksHomePage
          ),
          backgroundColor: kcPrimaryColor,
        ),
        backgroundColor: kcPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[

              Expanded(
                child: Row(
                  children: <Widget>[

                    // todo Manasic AlHajj
                    Expanded(
                        child: MyCardView(
                          cardColor: Colors.white,
                          onPress: () {
                            setState(() {
                              Navigator.pushNamed(context, 'manasic_alhajj');
                            });
                          },
                          myChild: ImageTextContainer(
                            lable: ksManasicAlhajj,
                            imageLocation: "src/images/manasic.png",
                          ),
                        )
                    ),

                    // todo  Manasic AlOmrah
                    Expanded(
                        child: MyCardView(
                          onPress: () {
                            setState(() {
                              Navigator.pushNamed(context, 'manasic_alomrah');
                            });
                          },
                          cardColor: Colors.white,
                          myChild: ImageTextContainer(
                            lable: ksManasicAlOmrah,
                            imageLocation: "src/images/manasic.png",
                          ),
                        )
                    ),

                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: <Widget>[

                    // todo Adab AlZiarah
                    Expanded(
                        child: MyCardView(
                          onPress: () {
                            setState(() {
                              Navigator.pushNamed(context, 'adab_alziarah');
                            });
                          },
                          cardColor: Colors.white,
                          myChild: ImageTextContainer(
                            imageLocation: 'src/images/adab_elziara.jpg',
                            lable: 'Adab AlZiara',
                          ),
                        )
                    ),

                    // todo Azkar Mostahaba
                    Expanded(
                        child: MyCardView(
                          onPress: () {
                            setState(() {
                              Navigator.pushNamed(context, 'azkar_mostahaba');
                            });
                          },
                          cardColor: Colors.white,
                          myChild: ImageTextContainer(
                            lable: 'Azkar',
                            imageLocation: "src/images/doaa.png",
                          ),
                        )
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
                          cardColor: Colors.white,
                          myChild: ImageTextContainer(
                            lable: 'Hajj Helps',
                            imageLocation: "src/images/help.png",
                          ),
                        )
                    ),

                    // todo Pray Time
                    Expanded(
                        child: MyCardView(
                          cardColor: Colors.white,
                          myChild: ImageTextContainer(
                            lable: 'Prayer Times',
                            imageLocation: "src/images/pray_time.png",
                          ),
                        )
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