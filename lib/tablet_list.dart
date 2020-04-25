import 'package:combo_clinical_app/model/tablet.dart';
import 'package:combo_clinical_app/tablet_details.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class TabletList extends StatefulWidget {
  @override
  _TabletListState createState() => _TabletListState();
}

class _TabletListState extends State<TabletList> {
  var category = Tablet();

  List<Tablet> tabletList;

  Future<List<Tablet>> parseJsonFromAssets({String assetsPath}) async {
    return rootBundle.loadString('assets/data/tablet.json').then((jsonStr) {
      var jsonResponse = json.decode(jsonStr);

      print(jsonResponse);
      tabletList =
          List<Tablet>.from(jsonResponse.map((x) => Tablet.fromJson(x)));
      return Future.value(tabletList);
    });
  }

  @override
  void initState() {
    // parseJsonFromAssets();
    super.initState();
  }

  final double containerHeight = 140.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      height: containerHeight * 2 + 40,
      child: FutureBuilder(
        future: parseJsonFromAssets(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: tabletList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => TabletDetails(
                            imageUrl: tabletList[index].imageUrl,
                            title: tabletList[index].title,
                            desc: tabletList[index].desc,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      height: containerHeight,
                      width: 350.0,
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
                            child: Image.asset('${tabletList[index].imageUrl}'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '${tabletList[index].title}',
                                  style: TextStyle(
                                      color: Color.fromRGBO(67, 72, 155, 1.0),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${tabletList[index].desc}',
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
                  );
                });
          } else {
            return Container(
              height: 60.0,
              width: 60.0,
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
