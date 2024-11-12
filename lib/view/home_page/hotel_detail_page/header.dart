// import 'package:flutter/material.dart';

// class Header extends StatelessWidget {
//   const Header({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Permissions Details',
//           style: Theme.of(context)
//               .textTheme
//               .bodyMedium
//               ?.copyWith(fontWeight: FontWeight.bold),
//         ),
//         Row(
//           children: [
//             OutlinedButton.icon(
//               icon: const Icon(Icons.close, color: Colors.red),
//               label: const Text('Reject'),
//               onPressed: () {
//                 // Implement reject functionality
//               },
//               style: OutlinedButton.styleFrom(
//                 foregroundColor: Colors.red,
//                 side: const BorderSide(color: Colors.red),
//               ),
//             ),
//             const SizedBox(width: 8),
//             ElevatedButton.icon(
//               icon: const Icon(Icons.check),
//               label: const Text('Approve'),
//               onPressed: () {
//                 // Implement approve functionality
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.blue,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
