// import 'package:flutter/material.dart';

// class ListHeading extends StatelessWidget {
//   const ListHeading({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;

//     return Container(
//       width: screenWidth * 0.97,
//       height: 60,
//       color: Colors.white,
//       child: const Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             CustomHeadText(
//               text: 'Hotels',
//             ),
//             CustomHeadText(
//               text: 'Hotel ID',
//             ),
//             CustomHeadText(
//               text: 'Category',
//             ),
//             CustomHeadText(
//               text: 'Rating',
//             ),
//             CustomHeadText(
//               text: 'Location',
//             ),
//             CustomHeadText(
//               text: 'Status',
//             ),
//             CustomHeadText(
//               text: 'Added',
//             ),
//             CustomHeadText(
//               text: 'Action',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomHeadText extends StatelessWidget {
//   final String text;

//   const CustomHeadText({
//     super.key,
//     required this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.bold,
//         color: Colors.black,
//       ),
//     );
//   }
// }
//    // Text(
//             //   'Hotel ID',
//             //   style: TextStyle(
//             //     fontSize: 16,
//             //     fontWeight: FontWeight.bold,
//             //     color: Colors.white,
//             //   ),
//             // ),
//             // Text(
//             //   'Category',
//             //   style: TextStyle(
//             //     fontSize: 16,
//             //     fontWeight: FontWeight.bold,
//             //     color: Colors.white,
//             //   ),
//             // ),
//             // Text(
//             //   'Rating',
//             //   style: TextStyle(
//             //     fontSize: 16,
//             //     fontWeight: FontWeight.bold,
//             //     color: Colors.white,
//             //   ),
//             // ),
//             // Text(
//             //   'Location',
//             //   style: TextStyle(
//             //     fontSize: 16,
//             //     fontWeight: FontWeight.bold,
//             //     color: Colors.white,
//             //   ),
//             // ),
//             // Text(
//             //   'Status',
//             //   style: TextStyle(
//             //     fontSize: 16,
//             //     fontWeight: FontWeight.bold,
//             //     color: Colors.white,
//             //   ),
//             // ),
//             // Text(
//             //   'Added',
//             //   style: TextStyle(
//             //     fontSize: 16,
//             //     fontWeight: FontWeight.bold,
//             //     color: Colors.white,
//             //   ),
//             // ),
//             // Text(
//             //   'Action',
//             //   style: TextStyle(
//             //     fontSize: 16,
//             //     fontWeight: FontWeight.bold,
//             //     color: Colors.white,
//             //   ),
//             // ),