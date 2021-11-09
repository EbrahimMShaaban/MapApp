import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function? onThemeChange;

  NavBar({this.onThemeChange});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<NavBar> {
  int selected_indx = 0;

  void selected_item(int index) {
    setState(() {
      selected_indx == index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black12,
      selectedItemColor: Colors.black,
      onTap: selected_item,
      type: BottomNavigationBarType.fixed,
      currentIndex: selected_indx,
      elevation: 50,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_border),
          title: Text('Home'),
        )
      ],
    );
  }
}
