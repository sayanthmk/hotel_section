// import 'package:flutter/material.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:provider/provider.dart';

// class HotelsDetailsPageSection extends StatelessWidget {
//   final HotelModel? hotel;
//   const HotelsDetailsPageSection({super.key, this.hotel});

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
//                   WideLayout(hotel: hotel)
//                 else
//                   NarrowLayout(hotel: hotel),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class CustomTopContainer extends StatelessWidget {
//   const CustomTopContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).padding.top,
//         left: 16,
//         right: 16,
//         bottom: 16,
//       ),
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
//               Text(
//                 'Hotels Details',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
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

// class WideLayout extends StatelessWidget {
//   final HotelModel? hotel;
//   const WideLayout({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           HeaderSection(hotel: hotel),
//           const SizedBox(height: 24),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   children: [
//                     GeneralInformation(hotel: hotel),
//                     const SizedBox(height: 24),
//                     MediaSection(hotel: hotel),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 24),
//               Expanded(
//                 flex: 1,
//                 child: Column(
//                   children: [
//                     FinanceDetails(hotel: hotel),
//                     const SizedBox(height: 24),
//                     ContactDetails(hotel: hotel),
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

// class NarrowLayout extends StatelessWidget {
//   final HotelModel? hotel;
//   const NarrowLayout({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           HeaderSection(hotel: hotel),
//           const SizedBox(height: 16),
//           GeneralInformation(hotel: hotel),
//           const SizedBox(height: 16),
//           MediaSection(hotel: hotel),
//           const SizedBox(height: 16),
//           FinanceDetails(hotel: hotel),
//           const SizedBox(height: 16),
//           ContactDetails(hotel: hotel),
//         ],
//       ),
//     );
//   }
// }

// class HeaderSection extends StatelessWidget {
//   final HotelModel? hotel;
//   const HeaderSection({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     final hotelProvider =
//         Provider.of<AdminHotelProvider>(context, listen: false);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Hotel ID: ${hotel!.hotelId}'.toUpperCase(),
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
//               onPressed: () async {
//                 await hotelProvider.approveHotel(hotel!);
//                 Navigator.pop(context);
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('Hotel approved successfully!')),
//                 );
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

// class InfoRow extends StatelessWidget {
//   final String label;
//   final Widget value;

//   const InfoRow({super.key, required this.label, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(label, style: TextStyle(color: Colors.grey[600])),
//         value,
//       ],
//     );
//   }
// }

// class PDFIcon extends StatelessWidget {
//   const PDFIcon({super.key});

//   @override
//   Widget build(BuildContext context) {
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
//           Text(
//             'View PDF',
//             style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class StatusChip extends StatelessWidget {
//   final String status;

//   const StatusChip({super.key, required this.status});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.green[50],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(
//         status,
//         style: const TextStyle(
//           color: Colors.green,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }

// class GeneralInformation extends StatelessWidget {
//   final HotelModel? hotel;
//   const GeneralInformation({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'General Information',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             const SizedBox(height: 16),
//             InfoRow(
//               label: 'Hotel Name',
//               value: Text(
//                 hotel!.hotelName,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 12),
//             InfoRow(label: 'Document', value: const PDFIcon()),
//             const SizedBox(height: 16),
//             const Text(
//               'Category',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             const SizedBox(height: 8),
//             InfoRow(
//               label: 'Hotel Category',
//               value: Text(
//                 hotel!.hotelType,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 12),
//             InfoRow(
//               label: 'City',
//               value: Text(
//                 hotel!.city,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 16),
//             InfoRow(
//               label: 'State',
//               value: Text(
//                 '${hotel!.state}',
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 16),
//             InfoRow(
//               label: 'Country',
//               value: Text(
//                 '${hotel!.country}',
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               'Status',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             const SizedBox(height: 8),
//             const StatusChip(status: 'Available'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MediaSection extends StatelessWidget {
//   final HotelModel? hotel;
//   const MediaSection({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Media',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
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
// }

// class FinanceDetails extends StatelessWidget {
//   final HotelModel? hotel;
//   const FinanceDetails({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Finance Details',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             const SizedBox(height: 16),
//             InfoRow(
//               label: 'GST Number',
//               value: Text(
//                 hotel!.gstNumber,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 12),
//             InfoRow(
//               label: 'PAN Number',
//               value: Text(
//                 hotel!.panNumber,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 12),
//             InfoRow(
//               label: 'Property Type',
//               value: Text(
//                 hotel!.propertySetup,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ContactDetails extends StatelessWidget {
//   final HotelModel? hotel;
//   const ContactDetails({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         elevation: 2,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Contact Details',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//                 const SizedBox(height: 16),
//                 InfoRow(
//                   label: 'Phone number',
//                   value: Text(
//                     hotel!.contactNumber,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 InfoRow(
//                   label: 'Email',
//                   value: Text(
//                     hotel!.emailAddress,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 InfoRow(
//                   label: 'Booking Since',
//                   value: Text(
//                     hotel!.bookingSince,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             )));
//   }
// }
