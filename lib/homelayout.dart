import 'package:flutter/material.dart';
import 'package:iti_flutter_project/FirestoreImageDisplay.dart';
// ignore: depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iti_flutter_project/TYPES.dart';

import 'package:iti_flutter_project/newtask.dart';

// ignore: camel_case_types
class homelayout extends StatefulWidget {
  const homelayout({Key? key}) : super(key: key);
  @override
  State<homelayout> createState() => _homelayoutState();
}

// ignore: camel_case_types
class _homelayoutState extends State<homelayout> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int currentindex = 0;
  List<Widget> screens = [
    const FirestoreImageDisplay(),
    const types_app(),
    const newtaskscreen(),
  ];
  List<String> titles = ['new taskes', 'new taskes', 'new taskes'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 81, 144, 160),
        title: Text(titles[currentindex]),
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 118, 171, 187),
              ),
              child: Text('Menu drawer'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 60,
              ),
              title: Text('First item'),
              subtitle: Text("This is the 1st item"),
              trailing: Icon(Icons.more_vert),
            ),
            ListTile(
              title: Text('Second item'),
            ),
          ],
        ),
      ),
      body: screens[currentindex],
      extendBody: false,
      bottomNavigationBar:
          // GNav(
          //   activeColor: Colors.white,
          //   tabBackgroundColor: CupertinoColors.inactiveGray,
          //   gap: 8,
          //   selectedIndex:currentindex ,
          //   onTabChange: (index){
          //     setState(() {
          //       currentindex=index;
          //     });
          //   },
          //   tabs: [
          //     GButton(
          //       icon: Icons.home,
          //       text: 'home',
          //     ),
          //     GButton(
          //       icon: Icons.search,
          //       text: 'search',
          //     ),
          //     GButton(
          //       icon: Icons.settings,
          //       text: 'settings',
          //     ),
          //   ],
          //   color: Colors.white,
          //   backgroundColor: Colors.pink,
          // ),
          CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.home, size: 50),
          Icon(Icons.list, size: 50),
          Icon(Icons.perm_identity, size: 50),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 181, 213, 226),
        animationCurve: Curves.fastEaseInToSlowEaseOut,
        animationDuration: const Duration(milliseconds: 600),
        letIndexChange: (index) => true,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        key: _bottomNavigationKey,
        index: currentindex,
        height: 60.0,
      ),
      //  bottomNavigationBar: CurvedNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //   selectedFontSize: 20,
      //   selectedIconTheme: const IconThemeData( size: 30),
      //   selectedItemColor: Colors.pink,
      //   selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      //   unselectedIconTheme: const IconThemeData(
      //     color: Colors.black,
      //   ),
      //   unselectedItemColor: Colors.black,
      //   currentIndex: currentindex,
      //   onTap: (index){
      //     setState(() {
      //       currentindex=index;
      //     });
      //   },
      //
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon:Icon(
      //           Icons.menu
      //         ),
      //       label: 'Taskes',
      //     ),
      //     BottomNavigationBarItem(
      //       icon:Icon(
      //           Icons.check_circle_outline
      //       ),
      //       label: 'Done',
      //     ),
      //     BottomNavigationBarItem(
      //       icon:Icon(
      //           Icons.archive
      //       ),
      //       label: 'archive',
      //     ),
      //
      //   ],
      // )
    );
  }
}
