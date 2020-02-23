import 'package:flutter/material.dart';
import 'package:mpha/usageAssets.dart';

class HajjHelp extends StatefulWidget {
  @override
  _HajjHelpState createState() => _HajjHelpState();
}

class _HajjHelpState extends State<HajjHelp> {
  @override
  Widget build(BuildContext context) {
    return OAppBar(
      oAppBarLable: ksHajjHelp,
      oAppBarChild:  Center(
        child: Text(
          ksHajjHelp,
          style: ksTextStyle2,
        ),
      ),
    );
  }
}
