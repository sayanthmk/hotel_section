// import 'package:flutter/material.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:provider/provider.dart';

// class RoomListPage extends StatelessWidget {
//   final String hotelId;

//   const RoomListPage({super.key, required this.hotelId});

//   @override
//   Widget build(BuildContext context) {
//     final hotelProvider = Provider.of<AdminProvider>(context);

//     // Fetch rooms when the widget is first loaded
//     if (hotelProvider.rooms.isEmpty && !hotelProvider.isLoading) {
//       hotelProvider.fetchRoomsForHotel(hotelId);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Rooms'),
//       ),
//       body: hotelProvider.isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: hotelProvider.rooms.length,
//               itemBuilder: (context, index) {
//                 final room = hotelProvider.rooms[index];
//                 return ListTile(
//                   title: Text('Room ${index + 1}'),
//                   subtitle: Text(room['accomadation_type'] ?? 'No Data'),
//                 );
//               },
//             ),
//     );
//   }
// }
