import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mpha/classes/animated_buttom.dart';
import 'package:mpha/classes/menu_page.dart';
import 'package:mpha/strings.dart';

import '../colors.dart';

class TestPlace extends StatefulWidget {
  @override
  _TestPlaceState createState() => _TestPlaceState();
}

class _TestPlaceState extends State<TestPlace> {
  @override
  Widget build(BuildContext context) {
    return MenuPage(
      title: ksHajjEfrad,
      child: PageSlider(),
    );
  }
}


class PageSlider extends StatefulWidget {

  @override
  _PageSliderState createState() => _PageSliderState();
}

class _PageSliderState extends State<PageSlider> {


  Widget beforOf8(context) {
    return Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksBeforOf8,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: kcTextSplash
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 20.0, left: 50.0, right: 50.0),
          child: Divider(
            thickness: 4.0,
            color: kcTextSplash,
          ),
        ),

        Expanded(
          child: ListView(
            children: <Widget>[

              // ihram
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_ihram.png",
                      targetedScreen: "m_ihram",
                      buttonText: ksMIhram,
                    ),
                  )
                ],
              ),

              //tawaf
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_tawaf.png",
                      targetedScreen: "m_tawaf",
                      buttonText: ksMTawaf,
                    ),
                  )
                ],
              ),

              //saee
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_saee.png",
                      targetedScreen: "m_saee",
                      buttonText: ksMSaee,
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_tawaf.png",
                      targetedScreen: "m_tawaf",
                      buttonText: ksMTawaf,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }

  Widget atDay8(contest) {
    return Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksAtDay8,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: kcTextSplash
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 20.0, left: 50.0, right: 50.0),
          child: Divider(
            thickness: 4.0,
            color: kcTextSplash,
          ),
        ),

        Expanded(
          child: ListView(
            children: <Widget>[

              // ihram
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_ihram.png",
                      targetedScreen: "m_ihram",
                      buttonText: ksMIhram,
                    ),
                  )
                ],
              ),

              //tawaf
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_tawaf.png",
                      targetedScreen: "m_tawaf",
                      buttonText: ksMTawaf,
                    ),
                  )
                ],
              ),

              //saee
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_saee.png",
                      targetedScreen: "m_saee",
                      buttonText: ksMSaee,
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_tawaf.png",
                      targetedScreen: "m_tawaf",
                      buttonText: ksMTawaf,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }

  Widget atDay9(context) {
    return Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ksAtDay9,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: kcTextSplash
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 20.0, left: 50.0, right: 50.0),
          child: Divider(
            thickness: 4.0,
            color: kcTextSplash,
          ),
        ),

        Expanded(
          child: ListView(
            children: <Widget>[

              // ihram
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_ihram.png",
                      targetedScreen: "m_ihram",
                      buttonText: ksMIhram,
                    ),
                  )
                ],
              ),

              //tawaf
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_tawaf.png",
                      targetedScreen: "m_tawaf",
                      buttonText: ksMTawaf,
                    ),
                  )
                ],
              ),

              //saee
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_saee.png",
                      targetedScreen: "m_saee",
                      buttonText: ksMSaee,
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 1.0,
                  color: kcTextSplash,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 72.0,
                    width: 72.0,
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.circle,
                          size: 70.0,
                          color: kcTextSplash,
                        ),
                        Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: kcTextSplash
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 170.0,
                    width: 140.0,
                    child: OAnimatedImageTextButton(
                      buttonImage: "assets/images/m_tawaf.png",
                      targetedScreen: "m_tawaf",
                      buttonText: ksMTawaf,
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  _onPageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChange,
            reverse: true,
            children: <Widget>[
              beforOf8(context),
              atDay8(context),
              atDay9(context),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                for (int i = 2; i >= 0; i--)
                  if (i == _currentPage) SlideDot(true) else
                    SlideDot(false)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SlideDot extends StatelessWidget {

  bool isActive;

  SlideDot(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: isActive ? 15 : 8,
      width: isActive ? 15 : 8,
      decoration: BoxDecoration(
        color: isActive ? kcTextSplash : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
