// import 'package:flutter/material.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:provider/provider.dart';

// class HotelListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final hotelProvider = Provider.of<HotelProvider>(context);

//     return Scaffold(
//       appBar: AppBar(title: Text('Hotels')),
//       body: hotelProvider.isLoading
//           ? Center(child: CircularProgressIndicator())
//           : hotelProvider.errorMessage.isNotEmpty
//               ? Center(child: Text('Error: ${hotelProvider.errorMessage}'))
//               : hotelProvider.hotels.isEmpty
//                   ? Center(child: Text('No hotels found'))
//                   : ListView.builder(
//                       itemCount: hotelProvider.hotels.length,
//                       itemBuilder: (context, index) {
//                         HotelModel hotel = hotelProvider.hotels[index];
//                         return ListTile(
//                           title: Text(hotel.hotelName),
//                           subtitle:
//                               Text('${hotel.emailAddress}, ${hotel.country}'),
//                           trailing: Text(hotel.hotelType),
//                           onTap: () {
//                             // Navigate to hotel detail screen
//                             // Pass the hotel object to the detail screen
//                           },
//                         );
//                       },
//                     ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'dart:developer';

// // import 'package:hotel_admin/model/hotel_model.dart';

// // class HotelListScreen extends StatelessWidget {
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Hotels')),
// //       body: StreamBuilder<QuerySnapshot>(
// //         stream: _firestore.collection('hotels').snapshots(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return Center(child: CircularProgressIndicator());
// //           }

// //           if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           }

// //           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
// //             return Center(child: Text('No hotels found'));
// //           }

// //           List<HotelModel> hotels = snapshot.data!.docs
// //               .map((doc) => HotelModel.fromFirestore(doc))
// //               .toList();

// //           return ListView.builder(
// //             itemCount: hotels.length,
// //             itemBuilder: (context, index) {
// //               HotelModel hotel = hotels[index];
// //               return ListTile(
// //                 title: Text(hotel.hotelName),
// //                 subtitle: Text('${hotel.city}, ${hotel.country}'),
// //                 trailing: Text(hotel.hotelType),
// //                 onTap: () {
// //                   // Navigate to hotel detail screen
// //                   // You can pass the hotel object to the detail screen
// //                 },
// //               );
// //             },
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }