import 'package:flutter/material.dart';
import './ProdutCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(), debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  List<Widget> bottomNavIconList = [
    Icon(Icons.store, size: 32),
    Icon(Icons.search, size: 32),
    Icon(Icons.favorite_border, size: 32),
    Icon(Icons.shopping_cart, size: 32),
    Icon(Icons.person_outline, size: 32),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
        child: new Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
                child: Image.asset(
                  'assets/puma.png',
                  width: 62.0,
                  height: 43.0,
                ),
              ),
            ),
            ProductCard(0xFFfaecfb, 'assets/shoes_01.png', 'o melhor do mundo?',
                '\$999.0', '\$749.0'),
            SizedBox(
              height: 32.0,
            ),
            ProductCard(0xFFf8e1da, 'assets/shoes_02.png', 'o que acha deste?',
                '\$699.0', '\$569.0')
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(0.065),
              offset: Offset(0.0, -3.0),
              blurRadius: 10.0)
        ]),
        child: Row(
          children: bottomNavIconList.map((item) {
            var index = bottomNavIconList.indexOf(item);
            return Expanded(
                child: GestureDetector(
                    onTap: () {
                      currentIndex = index;
                    },
                    child: bottomNavItem(item, index == currentIndex)));
          }).toList(),
        ),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
      decoration: BoxDecoration(
          boxShadow: isSelected
              ? [
                  BoxShadow(
                      color: Colors.black12.withOpacity(.02),
                      offset: Offset(0.0, 5.0),
                      blurRadius: 10.0)
                ]
              : []),
      child: item,
    );
