import 'package:combo_clinical_app/model/support.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class SupportList extends StatefulWidget {
  @override
  _SupportListState createState() => _SupportListState();
}

class _SupportListState extends State<SupportList> {
  var category = SupportModel();

  List<SupportModel> supportList;

  Future<List<SupportModel>> parseJsonFromAssets({String assetsPath}) async {
    return rootBundle.loadString('assets/data/support.json').then((jsonStr) {
      var jsonResponse = json.decode(jsonStr);

      print(jsonResponse);
      supportList = List<SupportModel>.from(
          jsonResponse.map((x) => SupportModel.fromJson(x)));
      return Future.value(supportList);
    });
  }

  @override
  void initState() {
    // parseJsonFromAssets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.2,
      child: FutureBuilder(
        future: parseJsonFromAssets(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: supportList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    height: MediaQuery.of(context).size.height / 5.5,
                    width: 350.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(140, 155, 185, 0.3),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 60.0,
                              width: 60.0,
                              child:
                                  Image.asset('${supportList[index].imageUrl}'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16.0),
                              child: Text(
                                '${supportList[index].title}',
                                style: TextStyle(
                                    color: Color.fromRGBO(67, 72, 155, 1.0),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.white54),
                      ],
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
