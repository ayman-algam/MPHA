import 'package:flutter/material.dart';
import 'package:mpha/widgets/main_widget.dart';
import 'package:mpha/strings.dart';

import '../theme.dart';

class HTTamattu extends StatelessWidget {
  static const routeName = 'hTTamattu';

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      title: ksHajjAltamattu,
      child: Center(
        child: Text(
          ksHajjAltamattu,
          style: kTextStyleNormal,
        ),
      ),
    );
  }
}
