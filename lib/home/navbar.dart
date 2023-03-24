// import 'package:abc/fitness/fitnesspage.dart';
// import 'package:abc/food/food_screen.dart';
// import 'package:abc/home/home.dart';
// import 'package:flutter/material.dart';
// import 'package:abc/Edit/profile.dart';
// import 'package:abc/food/camera.dart';


// class Navber extends StatefulWidget {
//   final String userKey;

//   Navber({required this.userKey});

//   @override
//   _NavberState createState() => _NavberState();
// }

// class _NavberState extends State<Navber> {
//   int _selectedIndex = 1;
//   late HomePage _homePage;

//   static List<Widget> _widgetOptions = <Widget>[
//     FoodScreen(),
//     //  HomePage(),
//     FitnessScreen(),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _homePage =
//         HomePage(userKey: widget.userKey); // สร้าง instance ของ HomePage
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   Widget _buildHomeIcon() {
//     return CircleAvatar(
//       backgroundColor: Colors.green,
//       child: Icon(Icons.home, color: Colors.white),
//     );
//   }

//   void _navigateToProfile(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(userKey: widget.userKey),
//       ),
//     );
//   }

//   void _navigateToCamera(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => CameraFood(userKey: widget.userKey),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         backgroundColor: Colors.green,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.account_circle),
//             onPressed: () => _navigateToProfile(context),
//           ),
//           if (_selectedIndex == 0)
//             IconButton(
//               icon: Icon(Icons.camera_alt),
//               onPressed: () => _navigateToCamera(context),
//             ),
//         ],
//       ),
//       body: Center(
//         child: _selectedIndex == 1 ? _homePage : _widgetOptions[_selectedIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.restaurant),
//             label: 'Restaurant',
//           ),
//           BottomNavigationBarItem(
//             icon: _buildHomeIcon(),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.fitness_center),
//             label: 'Fitness',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Color.fromARGB(255, 0, 0, 0),
//         unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
