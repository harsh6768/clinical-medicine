
import 'package:flutter/material.dart';

class RoutineTimeline extends StatefulWidget {
  @override
  _RoutineTimelineState createState() => _RoutineTimelineState();
}

class _RoutineTimelineState extends State<RoutineTimeline> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                margin: EdgeInsets.only(right: 16.0, top: 10.0, left: 16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(115, 207, 194, 0.4),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Icon(
                  Icons.check,
                  color: Color.fromRGBO(115, 207, 194, 1.0),
                ),
              ),
              Text(
                'Completed at 05:43',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromRGBO(67, 72, 155, 1.0),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 48.0,
                  top: 10.0,
                ),
                height: 180.0,
                width: 2.0,
                color: Color.fromRGBO(140, 155, 185, 1.0),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                height: 140,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(140, 155, 185, 0.3),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      width: 80.0,
                      child: Image.asset('assets/images/pills.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hydrocodone',
                            style: TextStyle(
                                color: Color.fromRGBO(67, 72, 155, 1.0),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '2x10mg',
                            style: TextStyle(
                              color: Color.fromRGBO(67, 72, 155, 0.8),
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  height: 60.0,
                  width: 60.0,
                  margin: EdgeInsets.only(right: 16.0, top: 10.0, left: 16.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(140, 155, 185, 0.3),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Image.asset(
                    'assets/images/next.png',
                    height: 50,
                    width: 50,
                  )),
              Text(
                'Skipped at 05:68',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromRGBO(67, 72, 155, 1.0),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 48.0,
                  top: 10.0,
                ),
                height: 180.0,
                width: 2.0,
                color: Color.fromRGBO(140, 155, 185, 1.0),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                height: 140,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(140, 155, 185, 0.3),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      width: 80.0,
                      child: Image.asset('assets/images/pills.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hydrocodone',
                            style: TextStyle(
                                color: Color.fromRGBO(67, 72, 155, 1.0),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '2x10mg',
                            style: TextStyle(
                              color: Color.fromRGBO(67, 72, 155, 0.8),
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                margin: EdgeInsets.only(right: 16.0, top: 10.0, left: 16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(115, 207, 194, 0.4),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Icon(
                  Icons.check,
                  color: Color.fromRGBO(115, 207, 194, 1.0),
                ),
              ),
              Text(
                'Completed at 08.10',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromRGBO(67, 72, 155, 1.0),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 48.0,
                  top: 10.0,
                ),
                height: 180.0,
                width: 2.0,
                color: Color.fromRGBO(140, 155, 185, 1.0),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                height: 140,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(140, 155, 185, 0.3),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        height: 70.0,
                        width: 70.0,
                        margin:
                            EdgeInsets.only(right: 16.0, top: 10.0, left: 16.0),
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 171, 149, 0.5),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image.asset('assets/images/running.png')),
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Activity',
                            style: TextStyle(
                                color: Color.fromRGBO(67, 72, 155, 1.0),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '30',
                            style: TextStyle(
                              color: Color.fromRGBO(67, 72, 155, 0.8),
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
