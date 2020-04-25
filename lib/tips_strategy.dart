import 'package:combo_clinical_app/motivation_list.dart';
import 'package:combo_clinical_app/support_list.dart';
import 'package:flutter/material.dart';

class TipsAndStrategy extends StatefulWidget {
  @override
  _TipsAndStrategyState createState() => _TipsAndStrategyState();
}

class _TipsAndStrategyState extends State<TipsAndStrategy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 16.0, top: 40.0),
                  child: Text(
                    'Tips & Strategies',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(67, 72, 155, 1.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Motivation',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromRGBO(67, 72, 155, 1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //Custom Divider
                          Container(
                            color: Color.fromRGBO(255, 242, 223, 1.0),
                            width: 150.0,
                            height: 8.0,
                          )
                        ],
                      ),
                      Text(
                        'Watch all',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromRGBO(255, 129, 96, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MotivationList(),
                Container(
                  margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Support',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromRGBO(67, 72, 155, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //Custom Divider
                      Container(
                        color: Color.fromRGBO(255, 242, 223, 1.0),
                        width: 150.0,
                        height: 8.0,
                      )
                    ],
                  ),
                ),
                SupportList(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
