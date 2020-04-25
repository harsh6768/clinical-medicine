
import 'package:flutter/material.dart';

class TabletCard extends StatefulWidget {
  @override
  _TabletCardState createState() => _TabletCardState();
}

class _TabletCardState extends State<TabletCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8.0),
          // padding: EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromRGBO(67, 72, 155, 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          // height: MediaQuery.of(context).size.height / 3.5,
          // width: MediaQuery.of(context).size.width/2.5,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Image.asset('assets/images/user.png'),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(left: 16.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Trial drug@',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '10mg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 8.0,
                      color: Color.fromRGBO(140, 155, 185, 0.3),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(left: 16.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'When you wake',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'up.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.fast_forward,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          // padding: EdgeInsets.all(16.0),
          height: 220.0,
          width: 350.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(67, 72, 155, 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: Image.asset('assets/images/user.png'),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(left: 16.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Trial drug@',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '10mg',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.fast_forward,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(left: 16.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'When you wake',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'up.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.fast_forward,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
