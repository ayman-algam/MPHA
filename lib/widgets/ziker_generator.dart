import 'package:flutter/material.dart';
import 'package:mpha/models/ziker_content.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AzkarGenerator extends StatefulWidget {
  AzkarGenerator({this.azkarList});

  final List<ZikerContent> azkarList;

  @override
  _AzkarGeneratorState createState() => _AzkarGeneratorState();
}

class _AzkarGeneratorState extends State<AzkarGenerator> {
  void onTap(index) {
    setState(() {
      if (widget.azkarList[index].done <
          widget.azkarList[index].numberOfRepetition) {
        widget.azkarList[index].done++;
        widget.azkarList[index].percentage = widget.azkarList[index].done /
            widget.azkarList[index].numberOfRepetition;
      } else {
        widget.azkarList.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.azkarList.length,
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(15),
          splashColor: Colors.yellowAccent,
          onTap: () => onTap(index),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                            "${widget.azkarList[index].id}",
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
                        widget.azkarList[index].zt,
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
                          percent: widget.azkarList[index].percentage,
                          center: new Text(
                            "${widget.azkarList[index].numberOfRepetition - widget.azkarList[index].done}",
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
                          widget.azkarList[index].zc,
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
                          widget.azkarList[index].zf,
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
      },
    );
  }
}
