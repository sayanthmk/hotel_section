// import 'package:flutter/material.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:hotel_admin/view/home_page/hotel_detail_page/detail_design_m.dart';
// import 'package:provider/provider.dart';

// class PermissionsPage extends StatelessWidget {
//   const PermissionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F7FA),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           if (constraints.maxWidth < 600) {
//             return const MobilePermissionsPage();
//           } else {
//             return const WebPermissionsPage();
//           }
//         },
//       ),
//     );
//   }
// }

// class MobilePermissionsPage extends StatelessWidget {
//   const MobilePermissionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildMobileHeader(context),
//             const SizedBox(height: 24),
//             _buildHeadingSection(),
//             const SizedBox(height: 24),
//             _buildMobileSortSection(),
//             const SizedBox(height: 24),
//             _buildMobileContent(context),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMobileHeader(BuildContext context) {
//     return Column(
//       children: [
//         _buildSearchBar(),
//         const SizedBox(height: 16),
//         _buildUserInfo(context),
//       ],
//     );
//   }

//   Widget _buildMobileSortSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         _buildSortButtons(),
//         const SizedBox(height: 16),
//         _buildFilterButtons(),
//       ],
//     );
//   }

//   Widget _buildMobileContent(BuildContext context) {
//     final hotelProvider = Provider.of<AdminHotelProvider>(context);

//     if (hotelProvider.isLoading) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     if (hotelProvider.errorMessage.isNotEmpty) {
//       return Center(child: Text('Error: ${hotelProvider.errorMessage}'));
//     }

//     final hotels = hotelProvider.approvedHotels;
//     return ListView.separated(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: hotels.length,
//       separatorBuilder: (context, index) => const SizedBox(height: 8),
//       itemBuilder: (context, index) {
//         HotelModel hotel = hotels[index];
//         return _buildMobileHotelItem(context, hotel);
//       },
//     );
//   }

//   Widget _buildMobileHotelItem(BuildContext context, HotelModel hotel) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       child: ListTile(
//         contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         title: Text(hotel.hotelName,
//             style: const TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text('${hotel.hotelType} - ${hotel.country}'),
//         trailing: IconButton(
//           icon: const Icon(Icons.arrow_forward_ios, size: 18),
//           onPressed: () => _navigateToHotelDetails(context, hotel),
//         ),
//       ),
//     );
//   }
// }

// class WebPermissionsPage extends StatelessWidget {
//   const WebPermissionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildWebHeader(context),
//             const SizedBox(height: 32),
//             _buildHeadingSection(),
//             const SizedBox(height: 32),
//             _buildWebSortSection(),
//             const SizedBox(height: 32),
//             _buildWebContent(context),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildWebHeader(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Expanded(flex: 3, child: _buildSearchBar()),
//         const SizedBox(width: 20),
//         _buildUserInfo(context),
//       ],
//     );
//   }

//   Widget _buildWebSortSection() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         _buildSortButtons(),
//         _buildFilterButtons(),
//       ],
//     );
//   }

//   Widget _buildWebContent(BuildContext context) {
//     final hotelProvider = Provider.of<AdminHotelProvider>(context);

//     if (hotelProvider.isLoading) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     if (hotelProvider.errorMessage.isNotEmpty) {
//       return Center(child: Text('Error: ${hotelProvider.errorMessage}'));
//     }

//     final hotels = hotelProvider.approvedHotels;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         _buildListHeading(),
//         const SizedBox(height: 16),
//         ListView.separated(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemCount: hotels.length,
//           separatorBuilder: (context, index) => const SizedBox(height: 8),
//           itemBuilder: (context, index) {
//             HotelModel hotel = hotels[index];
//             return _buildWebHotelItem(context, hotel);
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildWebHotelItem(BuildContext context, HotelModel hotel) {
//     return InkWell(
//       onTap: () => _navigateToHotelDetails(context, hotel),
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(8),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.1),
//               spreadRadius: 1,
//               blurRadius: 4,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Expanded(
//                 flex: 3,
//                 child: Text(hotel.hotelName,
//                     style: const TextStyle(fontWeight: FontWeight.w500))),
//             Expanded(flex: 2, child: Text(hotel.hotelType)),
//             Expanded(flex: 2, child: Text('${hotel.country}, ${hotel.state}')),
//             Expanded(flex: 2, child: _buildStatusChip(hotel.emailAddress)),
//             Expanded(
//               flex: 1,
//               child: IconButton(
//                 icon: const Icon(Icons.more_vert, color: Color(0xFF5B6871)),
//                 onPressed: () {},
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Shared widgets and methods

// Widget _buildSearchBar() {
//   return Container(
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(8),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.grey.withOpacity(0.1),
//           spreadRadius: 1,
//           blurRadius: 4,
//           offset: const Offset(0, 2),
//         ),
//       ],
//     ),
//     child: const TextField(
//       decoration: InputDecoration(
//         hintText: "Search hotels...",
//         prefixIcon: Icon(Icons.search, color: Color(0xFF5B6871)),
//         border: InputBorder.none,
//         contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//       ),
//     ),
//   );
// }

// Widget _buildUserInfo(BuildContext context) {
//   return Row(
//     children: [
//       IconButton(
//         icon:
//             const Icon(Icons.notifications_outlined, color: Color(0xFF5B6871)),
//         onPressed: () {},
//       ),
//       const SizedBox(width: 16),
//       CircleAvatar(
//         radius: 20,
//         backgroundColor: Theme.of(context).primaryColor,
//         child: const Text("JD", style: TextStyle(color: Colors.white)),
//       ),
//       const SizedBox(width: 12),
//       const Text(
//         "John Doe",
//         style: TextStyle(
//           fontSize: 16,
//           fontWeight: FontWeight.w500,
//           color: Color(0xFF2D3B45),
//         ),
//       ),
//     ],
//   );
// }

// Widget _buildHeadingSection() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       const Text(
//         'Hotel Management',
//         style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF2D3B45)),
//       ),
//       ElevatedButton.icon(
//         onPressed: () {},
//         icon: const Icon(Icons.add, color: Colors.white),
//         label:
//             const Text('Add New Hotel', style: TextStyle(color: Colors.white)),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: const Color(0xFF3498DB),
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//         ),
//       ),
//     ],
//   );
// }

// Widget _buildSortButtons() {
//   return Wrap(
//     spacing: 8,
//     runSpacing: 8,
//     children: [
//       _buildSortButton('All Hotels', isActive: true),
//       _buildSortButton('Available'),
//       _buildSortButton('Occupied'),
//       _buildSortButton('Maintenance'),
//     ],
//   );
// }

// Widget _buildSortButton(String text, {bool isActive = false}) {
//   return ElevatedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(
//       backgroundColor: isActive ? const Color(0xFF3498DB) : Colors.white,
//       foregroundColor: isActive ? Colors.white : const Color(0xFF5B6871),
//       elevation: 0,
//       side: BorderSide(
//           color: isActive ? Colors.transparent : const Color(0xFFE0E0E0)),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//     ),
//     child: Text(text),
//   );
// }

// Widget _buildFilterButtons() {
//   return Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       _buildFilterButton(Icons.calendar_today, "Select Date"),
//       const SizedBox(width: 8),
//       _buildFilterButton(Icons.filter_list, "Filters"),
//     ],
//   );
// }

// Widget _buildFilterButton(IconData icon, String label) {
//   return OutlinedButton.icon(
//     onPressed: () {},
//     icon: Icon(icon, size: 18, color: const Color(0xFF5B6871)),
//     label: Text(label, style: const TextStyle(color: Color(0xFF5B6871))),
//     style: OutlinedButton.styleFrom(
//       side: const BorderSide(color: Color(0xFFE0E0E0)),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//     ),
//   );
// }

// Widget _buildListHeading() {
//   return Container(
//     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//     decoration: BoxDecoration(
//       color: const Color(0xFFF1F4F8),
//       borderRadius: BorderRadius.circular(8),
//     ),
//     child: const Row(
//       children: [
//         Expanded(
//             flex: 3,
//             child: Text('Hotel Name',
//                 style: TextStyle(fontWeight: FontWeight.bold))),
//         Expanded(
//             flex: 2,
//             child: Text('Type', style: TextStyle(fontWeight: FontWeight.bold))),
//         Expanded(
//             flex: 2,
//             child: Text('Location',
//                 style: TextStyle(fontWeight: FontWeight.bold))),
//         Expanded(
//             flex: 2,
//             child:
//                 Text('Status', style: TextStyle(fontWeight: FontWeight.bold))),
//         Expanded(
//             flex: 1,
//             child:
//                 Text('Action', style: TextStyle(fontWeight: FontWeight.bold))),
//       ],
//     ),
//   );
// }

// Widget _buildStatusChip(String status) {
//   Color chipColor;
//   String displayStatus;
//   switch (status.toLowerCase()) {
//     case 'available':
//       chipColor = Colors.green;
//       displayStatus = 'Available';
//       break;
//     case 'occupied':
//       chipColor = Colors.orange;
//       displayStatus = 'Occupied';
//       break;
//     default:
//       chipColor = Colors.grey;
//       displayStatus = 'Maintenance';
//   }

//   return Container(
//     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//     decoration: BoxDecoration(
//       color: chipColor.withOpacity(0.1),
//       borderRadius: BorderRadius.circular(12),
//     ),
//     child: Text(
//       displayStatus,
//       style: TextStyle(color: chipColor, fontWeight: FontWeight.w500),
//     ),
//   );
// }

// void _navigateToHotelDetails(BuildContext context, HotelModel hotel) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => PermissionsDetailsPageSection(hotel: hotel),
//     ),
//   );
// }
