// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';

// class MobilePermissionsPage extends StatelessWidget {
//   const MobilePermissionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F7FA),
//       appBar: AppBar(
//         title: const Text('Hotel Permissions'),
//         backgroundColor: Colors.blue,
//       ),
//       body: const SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               HeadingSection(),
//               SizedBox(height: 16),
//               SortSection(),
//               SizedBox(height: 16),
//               ContentSection(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Custom Widget for Heading Section
// class HeadingSection extends StatelessWidget {
//   const HeadingSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Text(
//           'Manage Hotels',
//           style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF2D3B45)),
//         ),
//         ElevatedButton.icon(
//           onPressed: () {},
//           icon: const Icon(Icons.add, color: Colors.white),
//           label: const Text('Add Hotel', style: TextStyle(color: Colors.white)),
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color(0xFF3498DB),
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           ),
//         ),
//       ],
//     );
//   }
// }

// // Custom Widget for Sort Section
// class SortSection extends StatelessWidget {
//   const SortSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         SortButtons(),
//         SizedBox(height: 8),
//         FilterButtons(),
//       ],
//     );
//   }
// }

// class SortButtons extends StatelessWidget {
//   const SortButtons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Wrap(
//       spacing: 8,
//       runSpacing: 8,
//       children: [
//         SortButton(text: 'All Hotels', isActive: true),
//         SortButton(text: 'Available'),
//         SortButton(text: 'Occupied'),
//         SortButton(text: 'Maintenance'),
//       ],
//     );
//   }
// }

// class SortButton extends StatelessWidget {
//   final String text;
//   final bool isActive;
//   const SortButton({super.key, required this.text, this.isActive = false});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(
//         backgroundColor: isActive ? const Color(0xFF3498DB) : Colors.white,
//         foregroundColor: isActive ? Colors.white : const Color(0xFF5B6871),
//         elevation: 0,
//         side: BorderSide(
//             color: isActive ? Colors.transparent : const Color(0xFFE0E0E0)),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       ),
//       child: Text(text),
//     );
//   }
// }

// class FilterButtons extends StatelessWidget {
//   const FilterButtons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         FilterButton(icon: Icons.calendar_today, label: "Select Date"),
//         SizedBox(width: 8),
//         FilterButton(icon: Icons.filter_list, label: "Filters"),
//       ],
//     );
//   }
// }

// class FilterButton extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   const FilterButton({super.key, required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton.icon(
//       onPressed: () {},
//       icon: Icon(icon, size: 16, color: const Color(0xFF5B6871)),
//       label: Text(label, style: const TextStyle(color: Color(0xFF5B6871))),
//       style: OutlinedButton.styleFrom(
//         side: const BorderSide(color: Color(0xFFE0E0E0)),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       ),
//     );
//   }
// }

// // Custom Widget for Hotel List Content Section
// class ContentSection extends StatelessWidget {
//   const ContentSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final hotelProvider = Provider.of<AdminHotelProvider>(context);

//     if (hotelProvider.isLoading) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     if (hotelProvider.errorMessage.isNotEmpty) {
//       return Center(child: Text('Error: ${hotelProvider.errorMessage}'));
//     }

//     final hotels = hotelProvider.hotels;
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: hotels.length,
//       itemBuilder: (context, index) {
//         final hotel = hotels[index];
//         return HotelCard(hotel: hotel);
//       },
//     );
//   }
// }

// // Custom Widget for Hotel Card
// class HotelCard extends StatelessWidget {
//   final HotelModel hotel;
//   const HotelCard({super.key, required this.hotel});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigator.of(context).push(MaterialPageRoute(
//         //   builder: (context) => HotelDetailPage(hotel: hotel),
//         // ));
//       },
//       child: Card(
//         margin: const EdgeInsets.symmetric(vertical: 8),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text("hotel.name",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 8),
//               const Row(
//                 children: [
//                   Icon(Icons.location_on, size: 16, color: Colors.grey),
//                   SizedBox(width: 4),
//                   Text("hotel.location"),
//                 ],
//               ),
//               const SizedBox(height: 8),
//               Text("Status: {hotel.status}",
//                   style: TextStyle(color: Colors.green[800])),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
