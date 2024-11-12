import 'package:flutter/material.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/view/permissions_page/permission_detail_page/permisiion_web_sec.dart';
import 'package:hotel_admin/view/permissions_page/permission_detail_page/permission_moblie_sec.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_top_container.dart';

class PermissionsDetailsPageSection extends StatelessWidget {
  final HotelModel? hotel;
  const PermissionsDetailsPageSection({super.key, this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const EnhancedTopContainer(
                  title: 'Permissions Details',
                ),
                if (constraints.maxWidth > 600)
                  WideLayout(hotel: hotel)
                else
                  NarrowLayout(hotel: hotel),
              ],
            ),
          );
        },
      ),
    );
  }
}








  // Widget _buildSearchButton(BuildContext context) {
  //   return Material(
  //     color: Colors.transparent,
  //     borderRadius: BorderRadius.circular(12),
  //     child: InkWell(
  //       borderRadius: BorderRadius.circular(12),
  //       onTap: onSearchTap,
  //       child: Container(
  //         padding: const EdgeInsets.all(8),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(12),
  //           border: Border.all(
  //             color: Colors.grey.withOpacity(0.2),
  //             width: 1,
  //           ),
  //         ),
  //         child: Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Icon(
  //               Icons.search,
  //               color: Colors.grey.shade700,
  //               size: 20,
  //             ),
  //             const SizedBox(width: 4),
  //             Text(
  //               'Search',
  //               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
  //                     color: Colors.grey.shade700,
  //                   ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildDivider() {
  //   return Container(
  //     height: 1,
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: [
  //           Colors.grey.withOpacity(0.1),
  //           Colors.grey.withOpacity(0.2),
  //           Colors.grey.withOpacity(0.1),
  //         ],
  //         stops: const [0.0, 0.5, 1.0],
  //       ),
  //     ),
  //   );
  // }
// }

// // Assuming UserMenu is defined elsewhere
// class UserSectionMenu extends StatelessWidget {
//   const UserSectionMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: Colors.grey.withOpacity(0.2),
//           width: 1,
//         ),
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 12,
//             backgroundColor: Colors.grey.shade200,
//             child: Icon(
//               Icons.person_outline,
//               size: 16,
//               color: Colors.grey.shade700,
//             ),
//           ),
//           const SizedBox(width: 8),
//           Icon(
//             Icons.arrow_drop_down,
//             color: Colors.grey.shade700,
//             size: 20,
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