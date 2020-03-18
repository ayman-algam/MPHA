import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GetAzkar extends StatefulWidget {
  GetAzkar({this.gotAzkar, this.numberOfAzkar});

  final List gotAzkar;
  final int numberOfAzkar;

  @override
  _GetAzkarState createState() => _GetAzkarState();
}

class _GetAzkarState extends State<GetAzkar> {
  int get numberOfAzkar => widget.gotAzkar.length;

  int allDone = 0;
  double allPercentage = 0;


  List<int> done = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  List<double> persentage = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        for (int i = 0; i < numberOfAzkar; i++)
          ZikerElement(
            id: widget.gotAzkar[i].id,
            numberOfAzkar: numberOfAzkar,
            azt: widget.gotAzkar[i].azt,
            azc: widget.gotAzkar[i].azc,
            azf: widget.gotAzkar[i].azf,
            onPress: () {
              print('the allpersentage = $allPercentage');
              print('the done= $allDone');
              setState(() {
                if (persentage[i] < 1) {
                  done[i]++;
                  persentage[i] = done[i] / widget.gotAzkar[i].iteration;
                } else {
                  widget.gotAzkar.removeAt(i);
                  done.removeAt(i);
                  persentage.removeAt(i);
                  allDone++;
                }
                allPercentage = allDone / widget.numberOfAzkar;
              });
            },
            done: done[i],
            allDone: i + 1,
            percentage: persentage[i],
            allPercentage: allPercentage,
          ),
      ],
    );
  }
}

class ZikerElement extends StatelessWidget {
  ZikerElement({
    this.id,
    this.numberOfAzkar,
    this.done,
    this.allDone,
    this.percentage,
    this.allPercentage,
    this.azt,
    this.azc,
    this.azf,
    this.onPress});

  final int id;
  final int numberOfAzkar;
  final int done;
  final int allDone;
  final double percentage;
  final double allPercentage;
  final String azt;
  final String azc;
  final String azf;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                    child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: 1.0,
                      center: new Text(
                        "$id",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.brown,
                    ),
                  ),

                  // the title
                  Text(
                    azt,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                    child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      animation: true,
                      percent: percentage,
                      center: new Text(
                        "$done",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.black),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.brown,
                    ),
                  ),
                ],
              ),

              // the content
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      azc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      azf,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}