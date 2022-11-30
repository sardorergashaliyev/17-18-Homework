import 'package:flutter/material.dart';
import 'package:homework/page1.dart';

class MyControlerPage extends StatefulWidget {
  const MyControlerPage({super.key});

  @override
  State<MyControlerPage> createState() => _MyControlerPageState();
}

class _MyControlerPageState extends State<MyControlerPage> {
  List lst = [
    const MyFristPage(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.yellowAccent,
    ),
  ];

  int indexi = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexi,
          onTap: (index) {
            indexi = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow_sharp), label: 'Play'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        body: lst[indexi],
      ),
    );
  }
}
