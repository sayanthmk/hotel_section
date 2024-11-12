// import 'package:flutter/material.dart';
// import 'package:hotel_admin/view/home_page/sample_page.dart';
// import 'package:hotel_admin/view/main_page/zigzag.dart';

// class CustomDrawerWidget extends StatelessWidget {
//   const CustomDrawerWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 250,
//       child: Drawer(
//         backgroundColor: const Color(0xFFE4E7E9),
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             Container(
//                 width: 250,
//                 height: 80,
//                 child: Center(
//                     child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 30,
//                       width: 30,
//                       decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(10)),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     const Text(
//                       'Redsons Hotel',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ))),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text('Home'),
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => SamplePage(),
//                 ));
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text('Permissions'),
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => AdminHomePage(),
//                 ));
//                 // Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text('Reports'),
//               onTap: () {
//                 // Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text('Reviews'),
//               onTap: () {
//                 // Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text('Settings'),
//               onTap: () {
//                 // Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text('Help'),
//               onTap: () {
//                 // Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.info),
//               title: const Text('Logout'),
//               onTap: () {
//                 // Navigator.pop(context); // Close the drawer
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
