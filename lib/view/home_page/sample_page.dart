// import 'package:flutter/material.dart';
// import 'package:hotel_admin/view/home_page/widgets/custom_heading/heading_row.dart';
// import 'package:hotel_admin/view/home_page/widgets/custom_listview/custom_list_view.dart';
// import 'package:hotel_admin/view/home_page/widgets/custom_sort_section/sort_section.dart';
// import 'package:hotel_admin/view/home_page/widgets/list_heading/list_heading.dart';
// import 'package:hotel_admin/view/home_page/widgets/page_navigate_container/page_navigate_container.dart';
// import 'package:hotel_admin/view/home_page/widgets/search_bar/searchbar.dart';

// class SamplePage extends StatelessWidget {
//   const SamplePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Color(0xFFE4E7E9),
//       body: Row(
//         children: [
//           // CustomDrawerWidget(),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CustomSearchWithNotification(),
//                   SizedBox(height: 5),
//                   // Heading Section
//                   CustomHeadingRow(
//                     title: 'Hotels List',
//                     actionText: 'Export',
//                   ),
//                   SizedBox(height: 5),
//                   // Sort section
//                   CustomSortSection(),
//                   SizedBox(height: 10),
//                   // List heading
//                   ListHeading(),
//                   SizedBox(height: 10),
//                   // Expanded ListView to avoid layout issues
//                   CustomListViewPage(),
//                   SizedBox(height: 10),
//                   // Pagination navigation container
//                   PageNavigateContainer(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
