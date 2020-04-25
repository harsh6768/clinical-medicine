import 'package:combo_clinical_app/activity_timeline.dart';
import 'package:combo_clinical_app/percent_progress.dart';
import 'package:combo_clinical_app/progress_card.dart';
import 'package:combo_clinical_app/tablet_card.dart';
import 'package:combo_clinical_app/tablet_list.dart';
import 'package:flutter/material.dart';

class YourPlan extends StatefulWidget {
  @override
  _YourPlanState createState() => _YourPlanState();
}

class _YourPlanState extends State<YourPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Good Morning,',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromRGBO(67, 72, 155, 1.0),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Jack.',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromRGBO(67, 72, 155, 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ProgressCard(),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Your Plan',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(67, 72, 155, 1.0),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'for today',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromRGBO(67, 72, 155, 1.0),
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          '1 of 4 completed',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromRGBO(67, 72, 155, 0.7),
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                  CustomPaint(
                    foregroundPainter: CircleProgress(
                      25.0,
                    ), // this will add custom painter after child
                    child: Container(
                      width: 180,
                      height: 180,
                      child: Center(
                        child: Text(
                          "25%",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(67, 72, 155, 1.0),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Text(
                        "Today's Activities",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromRGBO(67, 72, 155, 1.0),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(247, 160, 133, 1.0),
                        height: 2.0,
                      )
                    ]),
                    Container(
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 12.0,
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(163, 224, 215, 1.0),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                             color:  Color.fromRGBO(115, 207, 194, 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          Text(
                            'Tracker',
                            style: TextStyle(
                              fontSize: 20.0,
                            color:  Color.fromRGBO(115, 207, 194, 1.0),
                            fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              TabletCard(),
              TabletList(),
              // SizedBox(
              //   height: 10.0,
              // ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: 16.0,
                    ),
                    child: Text(
                      'Daily Review',
                      style: TextStyle(
                        color: Color.fromRGBO(67, 72, 155, 1.0),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 16.0,
                    ),
                    color: Color.fromRGBO(255, 242, 223, 1.0),
                    width: 150.0,
                    height: 8.0,
                  )
                ],
              ),
              RoutineTimeline(),
            ],
          ),
        ),
      ),
    );
  }
}
