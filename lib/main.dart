import 'package:flutter/material.dart';
import 'package:dikitabisa/pages/account.dart';
import 'package:dikitabisa/pages/home.dart';
import 'package:dikitabisa/pages/order.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));

  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

Map<int, Color> color = {
  50: Color.fromRGBO(104, 176, 171, .1),
  100: Color.fromRGBO(104, 176, 171, .2),
  200: Color.fromRGBO(104, 176, 171, .3),
  300: Color.fromRGBO(104, 176, 171, .4),
  400: Color.fromRGBO(104, 176, 171, .5),
  500: Color.fromRGBO(104, 176, 171, .6),
  600: Color.fromRGBO(104, 176, 171, .7),
  700: Color.fromRGBO(104, 176, 171, .8),
  800: Color.fromRGBO(104, 176, 171, .9),
  900: Color.fromRGBO(104, 176, 171, 1),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xff68B0AB, color);
    return MaterialApp(
      title: 'Dikitabisa',
      theme: ThemeData(
        fontFamily: 'MaisonNeue',
        primarySwatch: colorCustom,
      ),
      home: MyHomePage(title: 'Dikitabisa'),
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
  int i = 1;
  final List<Widget> pages = [Accounts(), Homes(), Orders()];

  void _incrementTab(index) {
    setState(() {
      i = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: i,
          onTap: (index) {
            _incrementTab(index);
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/akunklik.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/akunnonklik.png', scale: 2.5),
                ),
                title: Text('Account')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/home-non.png', scale: 2.5),
                ),
                title: Text('Home')),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/orderklik.png', scale: 2.5),
                ),
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Image.asset('images/ordernonklik.png', scale: 2.5),
                ),
                title: Text('Orders')),
          ]),
    );
  }
}
