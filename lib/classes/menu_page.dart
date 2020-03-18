import 'package:flutter/material.dart';
import 'package:mpha/colors.dart';
import 'package:mpha/strings.dart';
import 'package:mpha/usageAssets.dart';

class MenuPage extends StatefulWidget {
  final String title;
  final Widget child;

  MenuPage({this.title, this.child});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;

  double myScreenWidth, myScreenHeight;
  final Duration duration = const Duration(milliseconds: 150);

  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;
  Animation _iconAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.8,
    ).animate(_controller);
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.8,
    ).animate(_controller);
    _menuScaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1,
    ).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
    _iconAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    isCollapsed = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    myScreenHeight = size.height;
    myScreenWidth = size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kcPrimaryColor,
        body: Stack(
          children: <Widget>[
            menu(context),
            page(context),
          ],
        ),
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isCollapsed)
                          _controller.forward();
                        else
                          _controller.reverse();
                        isCollapsed = !isCollapsed;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 10),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Image(
                              image: AssetImage("assets/images/icon.png"),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Text(
                              'MPHA',
                              style: ksTextStyle1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    elevation: 20,
                    shadowColor: Colors.black,
                    color: kcPrimaryColor,
                    child: Container(
                      width: myScreenWidth * .75,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          MenuItem(
                            lable: ksHomePage,
                            iconData: Icons.home,
                            onPress: () {
                              Navigator.pushNamed(context, 'homePage');
                            },
                          ),

                          MenuItem(
                            lable: ksPrayTime,
                            iconData: Icons.timer,
                            onPress: () {
                              Navigator.pushNamed(context, 'pray_time');
                            },
                          ),
                          MenuItem(
                            lable: ksMaps,
                            iconData: Icons.gps_fixed,
                            onPress: () {
                              Navigator.pushNamed(context, '');
                            },
                          ),
                          MenuItem(
                            lable: ksAboutApp,
                            iconData: Icons.live_help,
                            onPress: () {
                              Navigator.pushNamed(context, '');
                            },
                          ),
                          MenuItem(
                            lable: ksShareApp,
                            iconData: Icons.share,
                            onPress: () {
                              Navigator.pushNamed(context, '');
                            },
                          ),
                          MenuItem(
                            lable: ksSetting,
                            iconData: Icons.settings,
                            onPress: () {
                              Navigator.pushNamed(context, '');
                            },
                          ),
                          MenuItem(
                            lable: ksExit,
                            iconData: Icons.exit_to_app,
                            onPress: () {
                              Navigator.pushNamed(context, '');
                            },
                          ),
                          sizedBoxHeight(5),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget page(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.75 * myScreenWidth,
      right: isCollapsed ? 0 : -0.5 * myScreenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          borderRadius: BorderRadius.circular(15.0),
          elevation: 10,
          color: kcPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.circular(15.0),
                  elevation: 10,
                  shadowColor: Colors.black,
                  color: kcPrimaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                              else
                                _controller.reverse();
                              isCollapsed = !isCollapsed;
                            });
                          },
                          child: AnimatedIcon(
                            icon: AnimatedIcons.menu_close,
                            color: kcTextSplash,
                            size: isCollapsed ? 32 : 40,
                            progress: _iconAnimation,
                          ),
                        ),
                        Text(
                          widget.title,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: kcTextSplash,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              print("nothing to say");
                            });
                          },
                          child: Icon(
                            Icons.help,
                            color: Colors.yellowAccent,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: widget.child,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

class MenuItem extends StatelessWidget {

  MenuItem({this.lable, this.onPress, this.iconData});

  final Function onPress;
  final String lable;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: GestureDetector(
        onTap: onPress,
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          elevation: 2,
          shadowColor: Colors.black,
          color: kcPrimaryColor,
          child: ListTile(
            leading: Icon(
              iconData,
              size: 30.0,
              color: kcTextSplash,
            ),
            title: Text(
              lable,
              style: ksTextStyle2.copyWith(
                  fontSize: 20.0
              ),
            ),
          ),
        ),
      ),
    );
  }
}





