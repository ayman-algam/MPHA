import 'package:flutter/material.dart';
import 'package:mpha/classes/models/ziker_content.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AzkarGenerator extends StatefulWidget {
  AzkarGenerator({this.azkarList});

  final List<ZikerContent> azkarList;

  @override
  _AzkarGeneratorState createState() => _AzkarGeneratorState();
}

class _AzkarGeneratorState extends State<AzkarGenerator> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.azkarList.map((index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (index.done < index.numberOfRepetition) {
                  index.done++;
                  index.percentage = index.done / index.numberOfRepetition;
                } else {
                  widget.azkarList.remove(index);
                }
              });
            },
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
                            "${index.id}",
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
                        index.zt,
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
                          percent: index.percentage,
                          center: new Text(
                            "${index.numberOfRepetition - index.done}",
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
                          index.zc,
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
                          index.zf,
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
      }).toList(),
    );
  }
}
