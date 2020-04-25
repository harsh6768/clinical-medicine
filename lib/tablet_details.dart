import 'package:flutter/material.dart';

class TabletDetails extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String desc;
  TabletDetails({this.imageUrl, this.title, this.desc});

  @override
  _TabletDetailsState createState() => _TabletDetailsState();
}

class _TabletDetailsState extends State<TabletDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(67, 72, 155, 1.0),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 30.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8.0),
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                      // color: Color.fromRGBO(115, 207, 194, 1.0),
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 8.0),
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                      // color: Color.fromRGBO(115, 207, 194, 1.0),
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 150,
                          width: 150,
                          child: Image.asset(widget.imageUrl),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16.0, top: 20.0),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Reported Avg',
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
                Container(
                  margin: EdgeInsets.only(left: 16.0, top: 10.0),
                  child: Text(
                    '2 tablets every 4-6 hours no more than 8 tablets per day',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromRGBO(67, 72, 155, 1.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Prescription',
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
                Container(
                  margin: EdgeInsets.only(left: 16.0, top: 10.0),
                  child: Text(
                    '1.75 tablets every 5.5 hours no more than 7 tablets per day',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromRGBO(67, 72, 155, 1.0),
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
}
