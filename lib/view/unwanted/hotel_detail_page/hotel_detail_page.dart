// import 'package:flutter/material.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:provider/provider.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';

// class HotelDetailsPage extends StatelessWidget {
//   final HotelModel hotel;

//   const HotelDetailsPage({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     // Get the HotelProvider instance
//     final hotelProvider =
//         Provider.of<AdminHotelProvider>(context, listen: false);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(hotel.hotelName),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Hotel ID: ${hotel.hotelId}'.toUpperCase(),
//                 style: const TextStyle(fontSize: 18),
//               ),
//               const SizedBox(height: 10),
//               Text('Hotel Name: ${hotel.hotelName}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Hotel Type: ${hotel.hotelType}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Property Setup: ${hotel.propertySetup}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Booking Since: ${hotel.bookingSince}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Contact Number: ${hotel.contactNumber}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Email Address: ${hotel.emailAddress}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('City: ${hotel.city}', style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('State: ${hotel.state}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Country: ${hotel.country}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Pincode: ${hotel.pincode}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('PAN Number: ${hotel.panNumber}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Property Number: ${hotel.propertyNumber}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('GST Number: ${hotel.gstNumber}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Leased: ${hotel.leased ? "Yes" : "No"}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Registration: ${hotel.registration ? "Yes" : "No"}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 10),
//               Text('Document Image: ${hotel.documentImage}',
//                   style: const TextStyle(fontSize: 18)),
//               const SizedBox(height: 20),
//               const Text(
//                 'Images:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               hotel.images.isNotEmpty
//                   ? SizedBox(
//                       height: 200, // Adjust the height as needed
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: hotel.images.length,
//                         itemBuilder: (context, index) {
//                           return Padding(
//                             padding: const EdgeInsets.only(right: 8.0),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(8.0),
//                               child: Image.network(
//                                 hotel.images[index],
//                                 width: 150, // Adjust the width as needed
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     )
//                   : const Text('No images available'),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () async {
//                   // Call the approveHotel method from the provider
//                   await hotelProvider.approveHotel(hotel);
//                   // Optionally, navigate back or show a success message
//                   Navigator.pop(context);
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text('Hotel approved successfully!'),
//                     ),
//                   );
//                 },
//                 child: const Text('Approve Hotel'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
