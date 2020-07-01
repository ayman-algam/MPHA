import 'package:flutter/material.dart';
import 'package:mpha/models/pilgrim.dart';
import 'package:mpha/provider/pilgrim_provider.dart';
import 'package:mpha/screens/account_settings.dart';
import 'package:mpha/screens/azkar_mostahaba.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/widgets/bordered_container.dart';
import 'package:mpha/widgets/image_text_button.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/widgets/text_button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'hamePage';

  @override
  Widget build(BuildContext context) {
    // to control view in case rotation of devise
    final isLandScape =
        MediaQuery
            .of(context)
            .orientation == Orientation.landscape;

    return MainWidget(
      title: ksHomePage,
      child: isLandScape
          ? Row(
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width * .5,
            child: BorderedContainer(),
          ),
          buildExpandedGridVew(isLandScape, context),
        ],
      )
          : Column(
        children: <Widget>[
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * .4,
            child: BorderedContainer(),
          ),
          buildExpandedGridVew(isLandScape, context)
        ],
      ),
    );
  }

  Expanded buildExpandedGridVew(bool isLanScape, BuildContext context) {
    final pilgrimProvider = Provider.of<PilgrimProvider>(context);

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            pilgrimProvider.currentUser.mansacType == null
                ? Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .250,
              child: TextButton(
                title: 'لم يتم إختيار المنسك',
                targetedScreen: AccountSettings.routeName,
              ),
            )
                : ImageTextButton(
                title: ' مناسك ${pilgrimProvider.buttonText}',
                imageUrl: pilgrimProvider.currentUser.mansacType ==
                    MansacType.hajj
                    ? 'assets/images/manasic_alhajj.png'
                    : 'assets/images/kaba.PNG',
                targetedScreen: pilgrimProvider.targetedScreen,
                type: 1,
                isLanScape: isLanScape),
            Row(
              children: <Widget>[
                ImageTextButton(
                    title: ksAdabAlZiarah,
                    imageUrl: 'assets/images/adab_alzeiara.png',
                    targetedScreen: '',
                    type: 1,
                    isLanScape: isLanScape),
                ImageTextButton(
                    title: ksAzkarMostahaba,
                    imageUrl: 'assets/images/doaa.png',
                    targetedScreen: AzkarMostahaba.routeName,
                    type: 1,
                    isLanScape: isLanScape),
              ],
            )
          ],
        ),
      ),
    );
  }
}
