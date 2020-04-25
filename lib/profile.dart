import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20.0, top: 20.0),
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Color.fromRGBO(255, 129, 96, 1.0),
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            bottom: 20.0,
                            top: 0.0,
                          ),
                          child: Text(
                            'Jack\nShephard',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromRGBO(67, 72, 155, 1.0),
                            ),
                          )),
                    ),
                    Row(
                      children: <Widget>[
                        Category(
                          imageUrl: 'assets/images/user.png',
                          title: 'Personal\n    info',
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/2.4,
                        ),
                        Category(
                          imageUrl: 'assets/images/support.png',
                          title: 'Support',
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/2.4,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Category(
                          imageUrl: 'assets/images/speed1.png',
                          title: 'Weigth\n 158lbs',
                          height: MediaQuery.of(context).size.height/4.4,
                          width:  MediaQuery.of(context).size.height/4.5,
                        ),
                        Category(
                          imageUrl: 'assets/images/lock1.png',
                          title: 'Account\nsettings',
                          height: MediaQuery.of(context).size.height/4.4,
                          width:  MediaQuery.of(context).size.height/4.5,
                        )
                      ],
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double height;
  final double width;
  Category({this.imageUrl, this.title, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(140, 155, 185, 0.3),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60.0,
            width: 60.0,
            child: Image.asset(
              imageUrl,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(title,
              style: TextStyle(
                color: Color.fromRGBO(67, 72, 155, 1.0),
                fontSize: 16.0,
                // fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
