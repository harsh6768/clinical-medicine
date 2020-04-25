
import 'package:flutter/material.dart';

class ProgressCard extends StatefulWidget {
  @override
  _ProgressCardState createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            // padding: EdgeInsets.all(16.0),
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 129, 96, 1.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          margin: EdgeInsets.only(right: 16.0, top: 10.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(140, 155, 185, 0.3),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Image.asset(
                            'assets/images/trophy.png',
                            height: 40.0,
                            width: 40.0,
                          ),
                        ),
                        Text(
                          'Great\nProgress',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0, bottom: 50.0),
                      child: Text(
                        'It looks like you are on\ntrack.Please continue to\nfollow your plan',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  // fit: StackFit.loose,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(247, 160, 133, 1.0),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'ok',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromRGBO(255, 129, 96, 1.0),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
