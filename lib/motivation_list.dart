import 'package:combo_clinical_app/model/motivation.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class MotivationList extends StatefulWidget {
  @override
  _MotivationListState createState() => _MotivationListState();
}

class _MotivationListState extends State<MotivationList> {
  var category = MotivationModel();

  List<MotivationModel> motivationList;

  Future<List<MotivationModel>> parseJsonFromAssets({String assetsPath}) async {
    return rootBundle.loadString('assets/data/motivation.json').then((jsonStr) {
      var jsonResponse = json.decode(jsonStr);

      print(jsonResponse);
      motivationList = List<MotivationModel>.from(
          jsonResponse.map((x) => MotivationModel.fromJson(x)));
      return Future.value(motivationList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: FutureBuilder(
        future: parseJsonFromAssets(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: motivationList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    margin: EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 10.0,
                    ),
                    // height: 200,
                    width: MediaQuery.of(context).size.width/2.8,
                    decoration: new BoxDecoration(
                      color: Color.fromRGBO(67, 72, 155, 1.0),
                      borderRadius: BorderRadius.circular(20.0),
                      image: new DecorationImage(
                        image:
                            new AssetImage('${motivationList[index].imageUrl}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '${motivationList[index].title}',
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
