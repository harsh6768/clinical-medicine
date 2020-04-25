import 'package:combo_clinical_app/profile.dart';
import 'package:combo_clinical_app/tips_strategy.dart';
import 'package:combo_clinical_app/your_plan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 3;

  List<Widget> _widgetOptions = <Widget>[
    YourPlan(),
    Text(
      'Index 1: Business',
    ),
    TipsAndStrategy(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      unselectedItemColor: Color.fromRGBO(67, 72, 155, 0.5),
      selectedItemColor: Color.fromRGBO(67, 72, 155, 1.0),
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            height: 30.0,
            width: 30.0,
            child: Image.asset('assets/images/flags.png'),
          ),
          title: Text("Your plan"),
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 30.0,
            width: 30.0,
            child: Image.asset('assets/images/medicine1.png'),
          ),
          title: Text("Your Care"),
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 30.0,
            width: 30.0,
            child: Image.asset('assets/images/lightbulb.png'),
          ),
          title: Text("Tips & Strategies"),
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 25.0,
            width: 25.0,
            child: Image.asset('assets/images/user1.png'),
          ),
          title: Text("Your Profile"),
        ),
      ],
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
    );
  }
}
