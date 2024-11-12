// import 'package:flutter/material.dart';

// class HotelListPage extends StatelessWidget {
//   const HotelListPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hotels List'),
//         actions: [
//           IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
//           IconButton(icon: const Icon(Icons.person), onPressed: () {}),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: const [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text('Staywise-Admin'),
//             ),
//             ListTile(title: Text('Hotels'), leading: Icon(Icons.hotel)),
//             ListTile(title: Text('Permissions'), leading: Icon(Icons.security)),
//             ListTile(title: Text('Reports'), leading: Icon(Icons.assessment)),
//             ListTile(title: Text('Reviews'), leading: Icon(Icons.rate_review)),
//             Divider(),
//             ListTile(title: Text('Settings'), leading: Icon(Icons.settings)),
//             ListTile(title: Text('Help'), leading: Icon(Icons.help)),
//             ListTile(title: Text('Logout'), leading: Icon(Icons.exit_to_app)),
//           ],
//         ),
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     const TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search...',
//                         prefixIcon: Icon(Icons.search),
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: ElevatedButton.icon(
//                             onPressed: () {},
//                             icon: const Icon(Icons.calendar_today),
//                             label: const Text('Select Date'),
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Expanded(
//                           child: ElevatedButton.icon(
//                             onPressed: () {},
//                             icon: const Icon(Icons.filter_list),
//                             label: const Text('Filters'),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: 10,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Checkbox(
//                                     value: index == 0, onChanged: (value) {}),
//                                 const Expanded(
//                                   child: Text(
//                                     'Shangri-la',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                                 const Text(
//                                   'Available',
//                                   style: TextStyle(color: Colors.green),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 4),
//                             const Text('Hotel ID: 302012'),
//                             const SizedBox(height: 4),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 IconButton(
//                                     icon: const Icon(Icons.edit),
//                                     onPressed: () {}),
//                                 IconButton(
//                                     icon: const Icon(Icons.visibility),
//                                     onPressed: () {}),
//                                 IconButton(
//                                     icon: const Icon(Icons.delete),
//                                     onPressed: () {}),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                         icon: const Icon(Icons.chevron_left), onPressed: () {}),
//                     for (int i = 1; i <= 5; i++)
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                         child: ElevatedButton(
//                           onPressed: i == 1 ? null : () {},
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.all(8),
//                             minimumSize: const Size(32, 32),
//                           ),
//                           child: Text('$i'),
//                         ),
//                       ),
//                     IconButton(
//                         icon: const Icon(Icons.chevron_right),
//                         onPressed: () {}),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
