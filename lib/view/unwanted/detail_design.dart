// import 'package:flutter/material.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:provider/provider.dart';

// class PermissionsDetailsPage extends StatelessWidget {
//   final HotelModel? hotel;
//   const PermissionsDetailsPage({super.key, this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     // final hotelProvider =
//     //     Provider.of<AdminHotelProvider>(context, listen: false);

//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             child: Column(
//               children: [
//                 _buildCustomTopContainer(context),
//                 if (constraints.maxWidth > 600)
//                   _buildWideLayout(context)
//                 else
//                   _buildNarrowLayout(context),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildCustomTopContainer(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(
//           top: MediaQuery.of(context).padding.top,
//           left: 16,
//           right: 16,
//           bottom: 16),
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
//           const Row(
//             children: [
//               // IconButton(
//               //   icon: Icon(Icons.arrow_back, color: Colors.black),
//               //   onPressed: () => Navigator.of(context).pop(),
//               // ),
//               Text('Permissions Details',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black)),
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
//               _buildUserMenu(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildUserMenu() {
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

//   Widget _buildWideLayout(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildHeader(context),
//           const SizedBox(height: 24),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   children: [
//                     _buildGeneralInformation(),
//                     const SizedBox(height: 24),
//                     _buildMediaSection(context),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 24),
//               Expanded(
//                 flex: 1,
//                 child: Column(
//                   children: [
//                     _buildFinanceDetails(),
//                     const SizedBox(height: 24),
//                     _buildContactDetails(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNarrowLayout(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildHeader(context),
//           const SizedBox(height: 16),
//           _buildGeneralInformation(),
//           const SizedBox(height: 16),
//           _buildMediaSection(context),
//           const SizedBox(height: 16),
//           _buildFinanceDetails(),
//           const SizedBox(height: 16),
//           _buildContactDetails(),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeader(BuildContext context) {
//     final hotelProvider =
//         Provider.of<AdminHotelProvider>(context, listen: false);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text('Hotel ID: ${hotel!.hotelId}'.toUpperCase(),
//             style: Theme.of(context)
//                 .textTheme
//                 .bodyMedium
//                 ?.copyWith(fontWeight: FontWeight.bold)),
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
//               onPressed: () async {
//                 // Call the approveHotel method from the provider
//                 await hotelProvider.approveHotel(hotel!);
//                 // Optionally, navigate back or show a success message
//                 Navigator.pop(context);
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     content: Text('Hotel approved successfully!'),
//                   ),
//                 );
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

//   Widget _buildGeneralInformation() {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('General Information',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//             const SizedBox(height: 16),
//             _buildInfoRow(
//                 'Hotel Name',
//                 Text(hotel!.hotelName,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 12),
//             _buildInfoRow('Document', _buildPDFIcon()),
//             const SizedBox(height: 16),
//             const Text('Category',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             const SizedBox(height: 8),
//             _buildInfoRow(
//                 'Hotel Category',
//                 Text(hotel!.hotelType,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 12),
//             _buildInfoRow(
//                 'City',
//                 Text(hotel!.city,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 16),
//             _buildInfoRow(
//                 'State',
//                 Text('${hotel!.state}',
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 16),
//             _buildInfoRow(
//                 'Country',
//                 Text('${hotel!.country}',
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 16),
//             const Text('Status',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             const SizedBox(height: 8),
//             _buildStatusChip('Available'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMediaSection(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Media',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//             const SizedBox(height: 16),
//             GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 3,
//                 crossAxisSpacing: 8,
//                 mainAxisSpacing: 8,
//               ),
//               itemCount: hotel!.images.length,
//               itemBuilder: (context, index) {
//                 return ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Image.network(
//                     hotel!.images[index],
//                     fit: BoxFit.cover,
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFinanceDetails() {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Finance Details',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//             const SizedBox(height: 16),
//             _buildInfoRow(
//                 'GST Number',
//                 Text(hotel!.gstNumber,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 12),
//             _buildInfoRow(
//                 'PAN Number',
//                 Text(hotel!.panNumber,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 12),
//             _buildInfoRow(
//                 'Property Type',
//                 Text(hotel!.propertySetup,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildContactDetails() {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Contact Details',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//             const SizedBox(height: 16),
//             _buildInfoRow(
//                 'Phone number',
//                 Text(hotel!.contactNumber,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 12),
//             _buildInfoRow(
//                 'Email',
//                 Text(hotel!.emailAddress,
//                     style: TextStyle(fontWeight: FontWeight.bold))),
//             const SizedBox(height: 12),
//             _buildInfoRow(
//               'Booking Since',
//               Text(
//                 hotel!.bookingSince,
//                 // DateFormat('yyyy')
//                 //     .format(DateTime(hotel!.bookingSince as int),
//                 //     ),
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoRow(String label, Widget value) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(label, style: TextStyle(color: Colors.grey[600])),
//         value,
//       ],
//     );
//   }

//   Widget _buildPDFIcon() {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.red[50],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: const Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(Icons.picture_as_pdf, color: Colors.red),
//           SizedBox(width: 4),
//           Text('View PDF',
//               style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatusChip(String status) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.green[50],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(
//         status,
//         style:
//             const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
