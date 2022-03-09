// import 'package:flutter/material.dart';

// class BottomBarScreen extends StatefulWidget {
//   const BottomBarScreen({Key? key}) : super(key: key);

//   @override
//   State<BottomBarScreen> createState() => _BottomBarScreenState();
// }

// class _BottomBarScreenState extends State<BottomBarScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Bar Screen'),
//       ),
//     );
//   }
// }

// 2nd Code...........................................................

import 'package:get_a_sale/consts/my_icons.dart';
import 'package:get_a_sale/screens/search.dart';
// import 'package:get_a_sale/screens/user_info.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';

import 'cart.dart';
import 'feeds.dart';
import 'home.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  // late List<Map<String, Object>> _pages;
  late List<Map<String, Widget>> _pages;
  // int _selectedPageIndex = 4;
  int _selectedPageIndex = 3;
  // int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': Home(),
      },
      {
        'page': Feeds(),
      },
      {
        'page': Search(),
      },
      {
        'page': Cart(),
      },
      // {
      //   'page': UserInfo(),
      // },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Theme.of(context).textSelectionColor,
              selectedItemColor: Colors.purple,
              currentIndex: _selectedPageIndex,
              items: [
                // BottomNavigationBarItem(
                //   icon: Icon(MyAppIcons.home),
                //   title: Text('Home'),
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(MyAppIcons.rss),
                //   title: Text('Feeds'),
                // ),
                // BottomNavigationBarItem(
                //   activeIcon: null,
                //   icon: Icon(null),
                //   title: Text('Search'),
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(
                //     MyAppIcons.cart,
                //   ),
                //   title: Text('Cart'),
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(MyAppIcons.user),
                //   title: Text('User'),
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          // child: Icon(MyAppIcons.search),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
    );
  }
}


//3rd Code.........................................................


// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: MyHomePage(),
//     );
//   }
// }
// Color color = Colors.blueAccent;
// String disp ='';
// class MyHomePage extends StatefulWidget {

//   class BottomBarScreen extends StatefulWidget {

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: color,
//       bottomNavigationBar: CurvedNavigationBar(
//         height: 70,
//         animationDuration: Duration(microseconds: 400),
//         backgroundColor: color,
//         items: [
//           Icon(Icons.add),
//           Icon(Icons.home),
//           Icon(Icons.search),
//         ],
//         onTap: (index){
//           setState(() {
//             if(index == 0){
//               disp = 'Add';
//               color = Colors.blueGrey;
//             }else if(index == 1){
//               disp = 'Home';
//               color = Colors.pinkAccent;
//             }else{
//               disp = 'Search';
//               color = Colors.deepPurple;
//             }
//           });
//         },
//       ),
//       body: Center(
//         child: Container(
//           child: Text(
//             disp,
//             style: TextStyle(
//               fontSize: 50,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }