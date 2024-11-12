// import 'package:flutter/material.dart';
// import 'package:hotel_admin/view/unwanted.dart/test/mobile_test.dart';
// import 'package:provider/provider.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:hotel_admin/view/home_page/hotel_detail_page/hotel_detail_page.dart';

// class WebPermissionsPage extends StatelessWidget {
//   const WebPermissionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F7FA),
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const SearchBar(), // Added SearchBar
//         elevation: 1,
//         toolbarHeight: 80,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: ElevatedButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.add, color: Colors.white),
//               label: const Text('Add Hotel',
//                   style: TextStyle(color: Colors.white)),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFF3498DB),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8)),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             FilterSortSection(), // Enhanced filter & sort
//             SizedBox(height: 24),
//             Expanded(child: ContentSection()), // Hotel content section
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Custom Search Bar in AppBar
// class SearchBar extends StatelessWidget {
//   const SearchBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Row(
//         children: [
//           const Icon(Icons.search, color: Colors.grey),
//           const SizedBox(width: 8),
//           Expanded(
//             child: TextField(
//               decoration: const InputDecoration(
//                 hintText: "Search hotels",
//                 border: InputBorder.none,
//               ),
//               onChanged: (value) {
//                 // Add search logic here
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Enhanced Filter & Sort Section
// class FilterSortSection extends StatelessWidget {
//   const FilterSortSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Text(
//           'Manage Hotels',
//           style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF2D3B45)),
//         ),
//         Row(
//           children: const [
//             SortDropdown(), // Added Sort Dropdown
//             SizedBox(width: 16),
//             FilterButtons(), // Custom filter buttons
//           ],
//         ),
//       ],
//     );
//   }
// }

// class SortDropdown extends StatelessWidget {
//   const SortDropdown({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       hint: const Text("Sort by", style: TextStyle(color: Colors.grey)),
//       items:
//           <String>['Name', 'Price', 'Rating', 'Location'].map((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//       onChanged: (_) {
//         // Add sort logic here
//       },
//     );
//   }
// }

// // Enhanced Filter Buttons with hover effect
// class FilterButtons extends StatelessWidget {
//   const FilterButtons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: const [
//         FilterButton(icon: Icons.calendar_today, label: "Select Date"),
//         SizedBox(width: 8),
//         FilterButton(icon: Icons.filter_list, label: "Filters"),
//       ],
//     );
//   }
// }

// // Custom Widget for Hotel List Content Section (Enhanced Card Design)
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
//     return GridView.builder(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3, // Making it grid-based for a modern layout
//         crossAxisSpacing: 16,
//         mainAxisSpacing: 16,
//         childAspectRatio: 3 / 2,
//       ),
//       itemCount: hotels.length,
//       itemBuilder: (context, index) {
//         final hotel = hotels[index];
//         return HotelCard(hotel: hotel); // Enhanced Hotel Card
//       },
//     );
//   }
// }

// // Enhanced Hotel Card Design with more details
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
//         elevation: 4,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         child: Stack(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ClipRRect(
//                   borderRadius:
//                       const BorderRadius.vertical(top: Radius.circular(16)),
//                   child: Image.network(
//                     'https://via.placeholder.com/150',
//                     height: 120,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "hotel.name",
//                         style: const TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         "hotel.location",
//                         style: const TextStyle(color: Colors.grey),
//                       ),
//                       const SizedBox(height: 8),
//                       Row(
//                         children: [
//                           Icon(Icons.star, color: Colors.yellow[700], size: 16),
//                           const SizedBox(width: 4),
//                           Text('{hotel.rating}'),
//                           const SizedBox(width: 16),
//                           Text('\${hotel.price}/night'),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Positioned(
//               right: 8,
//               top: 8,
//               child: IconButton(
//                 icon: const Icon(Icons.favorite_border),
//                 onPressed: () {
//                   // Add favorite logic here
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
