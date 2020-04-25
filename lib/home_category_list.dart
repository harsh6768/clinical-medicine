import 'package:combo_clinical_app/home.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

//this class is for testing purpose
class HomeCategory extends StatefulWidget {
  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  var category = Category();

  List<Category> categoryList;

  Future<List<Category>> parseJsonFromAssets({String assetsPath}) async {
    return rootBundle.loadString('assets/data/home.json').then((jsonStr) {
      var jsonResponse = json.decode(jsonStr);

      print(jsonResponse);
      categoryList =
          List<Category>.from(jsonResponse.map((x) => Category.fromJson(x)));
      return Future.value(categoryList);
    });
  }

  var divisible = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / divisible;
    final double itemWidth = size.width / 1.5;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder(
          future: parseJsonFromAssets(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // return GridView.count(
              //   crossAxisCount: 2,
              //   childAspectRatio: (itemWidth / itemHeight),
              //   controller: ScrollController(keepScrollOffset: false),
              //   shrinkWrap: true,
              //   scrollDirection: Axis.vertical,
              //   children: categoryList.map((var value) {
              //     // if(int.parse(value.id)>2){
              //     //   this.setState((){
              //     //          divisible=3;
              //     //   });
              //     // }
              //     // print(value.title);
              //     return new Container(
              //       decoration: BoxDecoration(
              //         color: Color.fromRGBO(140, 155, 185, 1.0),
              //         borderRadius: BorderRadius.circular(20.0),
              //         // boxShadow: [
              //         //   BoxShadow(
              //         //     blurRadius: 15.0,
              //         //     // spreadRadius: 5.0,
              //         //     color: Colors.grey.shade400,
              //         //     offset: Offset(3.0, 3.0),
              //         //   )
              //         // ],
              //       ),
              //       margin: EdgeInsets.all(1.0),
              //       child: Center(
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: <Widget>[
              //             Image.asset(
              //               '${value.imageUrl}',
              //               height: 60.0,
              //               width: 60.0,
              //             ),
              //             SizedBox(
              //               height: 10.0,
              //             ),
              //             Text(
              //               '${value.title}',
              //               style: new TextStyle(
              //                 fontSize: 20.0,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     );
              //   }).toList(),
              // );
              return GridView.builder(
                  itemCount: categoryList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (itemWidth / itemHeight),
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Container(
                        height: 400.0,
                        width: 300,
                        margin: EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 155, 185, 1.0),
                          borderRadius: BorderRadius.circular(20.0),
                          // boxShadow: [
                          //   BoxShadow(
                          //     blurRadius: 15.0,
                          //     // spreadRadius: 5.0,
                          //     color: Colors.grey.shade400,
                          //     offset: Offset(3.0, 3.0),
                          //   )
                          // ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Container(
                                height: 80.0,
                                width: 80.0,
                                child: Image.asset(
                                  '${categoryList[index].imageUrl}',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '${categoryList[index].title}',
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
      ),
    );
  }
}
