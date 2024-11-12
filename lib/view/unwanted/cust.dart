// import 'package:flutter/material.dart';
// import 'package:hotel_admin/view/home_page/hotel_detail_page/header.dart';
// import 'package:hotel_admin/view/home_page/hotel_detail_page/wide_layout.dart';
// // import 'package:intl/intl.dart';

// class CustomDetailsPage extends StatelessWidget {
//   const CustomDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             child: Column(
//               children: [
//                 const CustomTopContainer(),
//                 if (constraints.maxWidth > 600)
//                   const WideLayout()
//                 else
//                   const NarrowLayout(),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// // Custom Top Container Widget
// class CustomTopContainer extends StatelessWidget {
//   const CustomTopContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       // padding: EdgeInsets.only(
//       //   top: MediaQuery.of(context).padding.top,
//       //   left: 16,
//       //   right: 16,
//       //   bottom: 16,
//       // ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'Permissions Details',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.search, color: Colors.black),
//                 onPressed: () {
//                   // Implement search functionality
//                 },
//               ),
//               const UserMenu(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Custom User Menu Widget
// class UserMenu extends StatelessWidget {
//   const UserMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//       offset: const Offset(0, 56),
//       child: const Row(
//         children: [
//           CircleAvatar(
//             backgroundColor: Colors.green,
//             radius: 15,
//             child:
//                 Text('JH', style: TextStyle(color: Colors.white, fontSize: 12)),
//           ),
//           SizedBox(width: 8),
//           Text('Jay Hargudson', style: TextStyle(color: Colors.black)),
//           Icon(Icons.arrow_drop_down, color: Colors.black),
//         ],
//       ),
//       itemBuilder: (context) => [
//         const PopupMenuItem(child: Text('Profile')),
//         const PopupMenuItem(child: Text('Settings')),
//         const PopupMenuItem(child: Text('Logout')),
//       ],
//     );
//   }
// }

// // Custom Wide Layout Widget
// class WideLayout extends StatelessWidget {
//   const WideLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(24.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Header(),
//           SizedBox(height: 24),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   children: [
//                     GeneralInformation(),
//                     SizedBox(height: 24),
//                     MediaSection(),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 24),
//               Expanded(
//                 flex: 1,
//                 child: Column(
//                   children: [
//                     FinanceDetails(),
//                     SizedBox(height: 24),
//                     ContactDetails(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Custom Narrow Layout Widget
// class NarrowLayout extends StatelessWidget {
//   const NarrowLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Header(),
//           SizedBox(height: 16),
//           GeneralInformation(),
//           SizedBox(height: 16),
//           MediaSection(),
//           SizedBox(height: 16),
//           FinanceDetails(),
//           SizedBox(height: 16),
//           ContactDetails(),
//         ],
//       ),
//     );
//   }
// }
