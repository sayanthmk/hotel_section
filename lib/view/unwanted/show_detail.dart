// import 'package:flutter/material.dart';

// class AdminShowSection extends StatelessWidget {
//   const AdminShowSection({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 200.0,
//             floating: false,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               title: const Text('Luxury Hotel Admin'),
//               background: Image.network(
//                 'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _welcomeSection(),
//                   const SizedBox(height: 24),
//                   _statsSection(),
//                   const SizedBox(height: 24),
//                   _recentBookingsSection(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {},
//       //   child: const Icon(Icons.add),
//       //   tooltip: 'Add new booking',
//       // ),
//     );
//   }

//   Widget _welcomeSection() {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Welcome back, Admin!',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Here\'s what\'s happening at your hotel today.',
//               style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _statsSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Quick Stats',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 16),
//         GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 16,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           children: [
//             _statCard('Total Bookings', '1,234', Colors.blue, Icons.book),
//             _statCard('Available Rooms', '42', Colors.green, Icons.hotel),
//             _statCard('Occupancy Rate', '78%', Colors.orange, Icons.pie_chart),
//             _statCard('Revenue', '\$52,480', Colors.purple, Icons.attach_money),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _statCard(String title, String value, Color color, IconData icon) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 40, color: color),
//             const SizedBox(height: 8),
//             Text(
//               title,
//               style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 4),
//             Text(
//               value,
//               style: TextStyle(
//                   fontSize: 24, fontWeight: FontWeight.bold, color: color),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _recentBookingsSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Recent Bookings',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 16),
//         ListView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return Card(
//               margin: const EdgeInsets.only(bottom: 16),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://i.pravatar.cc/150?img=${index + 1}'),
//                 ),
//                 title: Text('Guest ${index + 1}'),
//                 subtitle: Text('Room ${101 + index}'),
//                 trailing: Chip(
//                   label: Text(
//                       'Check-in: ${DateTime.now().add(Duration(days: index)).toString().substring(0, 10)}'),
//                   backgroundColor: Colors.blue[100],
//                 ),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
