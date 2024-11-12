// import 'package:flutter/material.dart';

// class SamplePage extends StatelessWidget {
//   final List<List<String>> data = [
//     [
//       "Hotel A",
//       "City 1",
//       "5 stars",
//       "Price 1",
//       "Available",
//       "Review 1",
//       "Type 1",
//       "Contact 1"
//     ],
//     [
//       "Hotel B",
//       "City 2",
//       "4 stars",
//       "Price 2",
//       "Booked",
//       "Review 2",
//       "Type 2",
//       "Contact 2"
//     ],
//     [
//       "Hotel C",
//       "City 3",
//       "3 stars",
//       "Price 3",
//       "Available",
//       "Review 3",
//       "Type 3",
//       "Contact 3"
//     ],
//     [
//       "Hotel D",
//       "City 4",
//       "5 stars",
//       "Price 4",
//       "Booked",
//       "Review 4",
//       "Type 4",
//       "Contact 4"
//     ],
//     [
//       "Hotel E",
//       "City 5",
//       "4 stars",
//       "Price 5",
//       "Available",
//       "Review 5",
//       "Type 5",
//       "Contact 5"
//     ],
//     [
//       "Hotel F",
//       "City 6",
//       "3 stars",
//       "Price 6",
//       "Available",
//       "Review 6",
//       "Type 6",
//       "Contact 6"
//     ],
//     [
//       "Hotel G",
//       "City 7",
//       "5 stars",
//       "Price 7",
//       "Booked",
//       "Review 7",
//       "Type 7",
//       "Contact 7"
//     ],
//     [
//       "Hotel H",
//       "City 8",
//       "4 stars",
//       "Price 8",
//       "Available",
//       "Review 8",
//       "Type 8",
//       "Contact 8"
//     ],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Header Section
//               Container(
//                 width: screenWidth * 0.97,
//                 height: 50,
//                 color: Colors.deepOrange,
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: const [
//                       Text('Hotel Name'),
//                       Text('City'),
//                       Text('Rating'),
//                       Text('Price'),
//                       Text('Availability'),
//                       Text('Review'),
//                       Text('Type'),
//                       Text('Contact'),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),

//               // Customizable List Section
//               Container(
//                 width: screenWidth * 0.97,
//                 height: screenHeight * 0.90,
//                 color: Colors.yellow,
//                 child: ListView.builder(
//                   itemCount: data.length, // 8 rows
//                   itemBuilder: (context, rowIndex) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: List.generate(
//                           data[rowIndex].length,
//                           (colIndex) {
//                             // Customizing each column
//                             switch (colIndex) {
//                               case 0: // Hotel Name with bold text
//                                 return Container(
//                                   width: screenWidth * 0.15,
//                                   height: 50,
//                                   color: Colors.redAccent,
//                                   child: Center(
//                                     child: Text(
//                                       data[rowIndex][colIndex],
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               case 2: // Rating with star icon
//                                 return Container(
//                                   width: screenWidth * 0.10,
//                                   height: 50,
//                                   color: Colors.green,
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.star,
//                                         color: Colors.yellow,
//                                         size: 20,
//                                       ),
//                                       Text(data[rowIndex][colIndex]),
//                                     ],
//                                   ),
//                                 );
//                               case 4: // Availability with color indication
//                                 return Container(
//                                   width: screenWidth * 0.15,
//                                   height: 50,
//                                   color: data[rowIndex][colIndex] == "Available"
//                                       ? Colors.green
//                                       : Colors.red,
//                                   child: Center(
//                                     child: Text(
//                                       data[rowIndex][colIndex],
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               case 7: // Contact with phone icon
//                                 return Container(
//                                   width: screenWidth * 0.15,
//                                   height: 50,
//                                   color: Colors.blue,
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.phone,
//                                         color: Colors.white,
//                                         size: 18,
//                                       ),
//                                       SizedBox(width: 5),
//                                       Text(
//                                         data[rowIndex][colIndex],
//                                         style: const TextStyle(
//                                             color: Colors.white),
//                                       ),
//                                     ],
//                                   ),
//                                 );
//                               default: // Default columns with plain text
//                                 return Container(
//                                   width: screenWidth * 0.10,
//                                   height: 50,
//                                   color: Colors.primaries[
//                                       colIndex % Colors.primaries.length],
//                                   child: Center(
//                                     child: Text(
//                                       data[rowIndex][colIndex],
//                                       style:
//                                           const TextStyle(color: Colors.black),
//                                     ),
//                                   ),
//                                 );
//                             }
//                           },
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class CustomListView extends StatelessWidget {
//   final List<List<String>> data = [
//     [
//       "Hotel A",
//       "City 1",
//       "5 stars",
//       "Price 1",
//       "Available",
//       "Review 1",
//       "Type 1",
//       "Contact 1"
//     ],
//     [
//       "Hotel B",
//       "City 2",
//       "4 stars",
//       "Price 2",
//       "Booked",
//       "Review 2",
//       "Type 2",
//       "Contact 2"
//     ],
//     [
//       "Hotel C",
//       "City 3",
//       "3 stars",
//       "Price 3",
//       "Available",
//       "Review 3",
//       "Type 3",
//       "Contact 3"
//     ],
//     [
//       "Hotel D",
//       "City 4",
//       "5 stars",
//       "Price 4",
//       "Booked",
//       "Review 4",
//       "Type 4",
//       "Contact 4"
//     ],
//     [
//       "Hotel E",
//       "City 5",
//       "4 stars",
//       "Price 5",
//       "Available",
//       "Review 5",
//       "Type 5",
//       "Contact 5"
//     ],
//     [
//       "Hotel F",
//       "City 6",
//       "3 stars",
//       "Price 6",
//       "Available",
//       "Review 6",
//       "Type 6",
//       "Contact 6"
//     ],
//     [
//       "Hotel G",
//       "City 7",
//       "5 stars",
//       "Price 7",
//       "Booked",
//       "Review 7",
//       "Type 7",
//       "Contact 7"
//     ],
//     [
//       "Hotel H",
//       "City 8",
//       "4 stars",
//       "Price 8",
//       "Available",
//       "Review 8",
//       "Type 8",
//       "Contact 8"
//     ],
//   ];
//   CustomListView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;
//     return Container(
//       width: screenWidth * 0.97,
//       height: screenHeight * 0.90,
//       color: Colors.yellow,
//       child: ListView.builder(
//         itemCount: data.length, // 8 rows
//         itemBuilder: (context, rowIndex) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: List.generate(
//               data[rowIndex].length,
//               (colIndex) {
//                 // Customizing each column
//                 switch (colIndex) {
//                   case 0: // Hotel Name with bold text
//                     return Container(
//                       width: screenWidth * 0.13,
//                       height: 70,
//                       color: Colors.redAccent,
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height: 40,
//                               width: 40,
//                               color: Colors.grey,
//                             ),
//                             const SizedBox(
//                               width: 20,
//                             ),
//                             Text(
//                               data[rowIndex][colIndex],
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   case 2: // Rating with star icon
//                     return Container(
//                       width: screenWidth * 0.08,
//                       height: 70,
//                       color: Colors.green,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.star,
//                             color: Colors.yellow,
//                             size: 20,
//                           ),
//                           Text(data[rowIndex][colIndex]),
//                         ],
//                       ),
//                     );
//                   case 4: // Availability with color indication
//                     return Container(
//                       width: screenWidth * 0.10,
//                       height: 70,
//                       color: data[rowIndex][colIndex] == "Available"
//                           ? Colors.green
//                           : Colors.red,
//                       child: Center(
//                         child: Text(
//                           data[rowIndex][colIndex],
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     );
//                   case 7: // Contact with phone icon
//                     return Container(
//                       width: screenWidth * 0.10,
//                       height: 70,
//                       color: Colors.blue,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.phone,
//                             color: Colors.white,
//                             size: 18,
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             data[rowIndex][colIndex],
//                             style: const TextStyle(color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     );
//                   default: // Default columns with plain text
//                     return Container(
//                       width: screenWidth * 0.10,
//                       height: 70,
//                       color:
//                           Colors.primaries[colIndex % Colors.primaries.length],
//                       child: Center(
//                         child: Text(
//                           data[rowIndex][colIndex],
//                           style: const TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     );
//                 }
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:hotel_admin/view/home_page/custom_heading/heading_row.dart';
// import 'package:hotel_admin/view/home_page/custom_listview/custom_list_view.dart';
// import 'package:hotel_admin/view/home_page/custom_sort_section/sort_section.dart';
// import 'package:hotel_admin/view/home_page/drawer/drawer.dart';
// import 'package:hotel_admin/view/home_page/list_heading/list_heading.dart';
// import 'package:hotel_admin/view/home_page/page_navigate_container/page_navigate_container.dart';
// import 'package:hotel_admin/view/home_page/search_bar/searchbar.dart';
// import 'package:provider/provider.dart';

// class SamplePage extends StatelessWidget {
//   const SamplePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;

//     final hotelProvider = Provider.of<HotelProvider>(context);

//     if (hotelProvider.isLoading) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     if (hotelProvider.errorMessage.isNotEmpty) {
//       return Center(child: Text('Error: ${hotelProvider.errorMessage}'));
//     }

//     final hotels = hotelProvider.hotels;

//     // final mediaQuery = MediaQuery.of(context);
//     // final screenWidth = mediaQuery.size.width;
//     // final screenHeight = mediaQuery.size.height;

//     return Scaffold(
//       backgroundColor: Color(0xFFE4E7E9),
//       body: Row(
//         children: [
//           CustomDrawerWidget(),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(16.0),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     CustomSearchWithNotification(),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     //headin section
//                     CustomHeadingRow(
//                       title: 'Hotels List',
//                       actionText: 'Export',
//                     ),
//                     SizedBox(height: 5),
//                     //sort section

//                     CustomSortSection(),

//                     SizedBox(
//                       height: 10,
//                     ),
//                     // Heading Section (Updated)
//                     ListHeading(),
//                     // const SizedBox(height: 10),
//                     // Responsive Container with ListView.builder
//                     CustomListView(),

//                     ListView.builder(
//                       itemCount: hotels.length,
//                       itemBuilder: (context, rowIndex) {
//                         HotelModel hotel = hotels[rowIndex];

//                         return InkWell(
//                           onTap: () {},
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 width: screenWidth * 0.13,
//                                 height: 70,
//                                 color: Colors.redAccent,
//                                 child: Center(
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         height: 40,
//                                         width: 40,
//                                         color: Colors.grey,
//                                       ),
//                                       const SizedBox(
//                                         width: 20,
//                                       ),
//                                       Text(
//                                         hotel.hotelName,
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               //hotel id
//                               Container(
//                                 width: screenWidth * 0.08,
//                                 height: 70,
//                                 color: Colors.green,
//                                 child: const Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text('12131313')
//                                     // Text(hotel.hotelType),
//                                   ],
//                                 ),
//                               ),

//                               // hotel type
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blueAccent,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.hotelType,
//                                     style: const TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),

//                               // Availability with color indication
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: hotel.hotelName == "Available"
//                                     ? Colors.green
//                                     : Colors.red,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.emailAddress,
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),

//                               // Contact with phone icon
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     const SizedBox(width: 5),
//                                     Text(
//                                       hotel.panNumber,
//                                       style:
//                                           const TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     const SizedBox(width: 5),
//                                     Text(
//                                       hotel.country,
//                                       style:
//                                           const TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     const SizedBox(width: 5),
//                                     Text(
//                                       hotel.hotelName,
//                                       style:
//                                           const TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     const SizedBox(width: 5),
//                                     Text(
//                                       hotel.state,
//                                       style:
//                                           const TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                     PageNavigateContainer(),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


//[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]

// import 'package:flutter/material.dart';
// import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
// import 'package:hotel_admin/model/hotel_model.dart';
// import 'package:hotel_admin/view/home_page/hotel_detail_page/hotel_detail_page.dart';

// import 'package:hotel_admin/view/home_page/widgets/custom_sort_section/sort_section.dart';

// import 'package:hotel_admin/view/home_page/widgets/list_heading/list_heading.dart';

// import 'package:provider/provider.dart';

// class PermissionsPage extends StatelessWidget {
//   const PermissionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//     final screenHeight = mediaQuery.size.height;
//     final hotelProvider = Provider.of<HotelProvider>(context);

//     if (hotelProvider.isLoading) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     if (hotelProvider.errorMessage.isNotEmpty) {
//       return Center(child: Text('Error: ${hotelProvider.errorMessage}'));
//     }

//     final hotels = hotelProvider.hotels;
//     return Scaffold(
//       backgroundColor: const Color(0xFFE4E7E9),
//       body: Row(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         flex: 3,
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               hintText: "Search",
//                               prefixIcon: const Icon(Icons.search),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                                 borderSide: BorderSide.none,
//                               ),
//                               filled: true,
//                               fillColor: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.notifications),
//                         onPressed: () {},
//                       ),
//                       const SizedBox(width: 20),
//                       const Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 20,
//                             child: Icon(Icons.person),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             "John Doe",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 5),
//                   // Heading Section
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const SizedBox(
//                           height: 50,
//                           child: Center(
//                             child: Text(
//                               'Hello',
//                               style: TextStyle(
//                                   fontSize: 23, fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: screenWidth * 0.07,
//                           height: screenHeight * 0.07,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFFF4ECFB),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Icon(Icons.download_outlined),
//                               SizedBox(width: 10),
//                               Text(
//                                 'hai',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   // Sort section
//                   // CustomSortSection(),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           width: screenWidth * 0.30,
//                           height: screenHeight * 0.07,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Center(
//                             child: Padding(
//                               padding: const EdgeInsets.all(4.0),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   CustomButton(
//                                     text: 'All Hotels',
//                                     onTap: () {},
//                                     widthFactor: 0.06,
//                                     heightFactor: 0.06,
//                                     color: Colors.grey,
//                                   ),
//                                   CustomButton(
//                                     text: 'Available',
//                                     onTap: () {},
//                                   ),
//                                   CustomButton(
//                                     text: 'Service',
//                                     onTap: () {},
//                                   ),
//                                   CustomButton(
//                                     text: 'Unavailable',
//                                     onTap: () {},
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         Row(
//                           children: [
//                             Container(
//                               width: screenWidth * 0.10,
//                               height: screenHeight * 0.07,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: const Center(
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Icon(Icons.calendar_today),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Text(
//                                       "Select Date",
//                                       style: TextStyle(color: Colors.black),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: screenWidth * 0.07,
//                               height: screenHeight * 0.07,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: const Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(Icons.filter),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Text(
//                                     "Filter",
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   // List heading
//                   // ListHeading(),
//                   Container(
//                     width: screenWidth * 0.97,
//                     height: 60,
//                     color: Colors.white,
//                     child: const Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           CustomHeadText(
//                             text: 'Hotels',
//                           ),
//                           CustomHeadText(
//                             text: 'Hotel ID',
//                           ),
//                           CustomHeadText(
//                             text: 'Category',
//                           ),
//                           CustomHeadText(
//                             text: 'Rating',
//                           ),
//                           CustomHeadText(
//                             text: 'Location',
//                           ),
//                           CustomHeadText(
//                             text: 'Status',
//                           ),
//                           CustomHeadText(
//                             text: 'Added',
//                           ),
//                           CustomHeadText(
//                             text: 'Action',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   // Expanded ListView to avoid layout issues
//                   // CustomListViewPage(),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: hotels.length,
//                       itemBuilder: (context, rowIndex) {
//                         HotelModel hotel = hotels[rowIndex];

//                         return InkWell(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     HotelDetailsPage(hotel: hotel),
//                               ),
//                             );
//                           },
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Container(
//                                 width: screenWidth * 0.13,
//                                 height: 70,
//                                 color: Colors.redAccent,
//                                 child: Center(
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         height: 40,
//                                         width: 40,
//                                         color: Colors.grey,
//                                       ),
//                                       const SizedBox(width: 20),
//                                       Text(
//                                         hotel.hotelName,
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               // Hotel ID
//                               Container(
//                                 width: screenWidth * 0.08,
//                                 height: 70,
//                                 color: Colors.green,
//                                 child: const Center(
//                                   child: Text('12131313'),
//                                 ),
//                               ),
//                               // Hotel type
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blueAccent,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.hotelType,
//                                     style: const TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                               // Availability
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: hotel.hotelName == "Available"
//                                     ? Colors.green
//                                     : Colors.red,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.emailAddress,
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               // Contact
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.panNumber,
//                                     style: const TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                               // Country
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.country,
//                                     style: const TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                               // Hotel state
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.state,
//                                     style: const TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: screenWidth * 0.10,
//                                 height: 70,
//                                 color: Colors.blue,
//                                 child: Center(
//                                   child: Text(
//                                     hotel.state,
//                                     style: const TextStyle(color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   // Pagination navigation container
//                   // PageNavigateContainer(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }