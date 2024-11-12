// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class HotelLandingPage extends StatelessWidget {
//   final List<String> carouselImages = [
//     'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//     'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//     'https://images.unsplash.com/photo-1529290130-4ca3753253ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//   ];

//   HotelLandingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Navigation Bar
//             _buildNavBar(context),

//             // Carousel Section
//             _buildCarouselSection(context),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 // Left Side: One large image
//                 Expanded(
//                   flex: 1, // Adjusts the space taken by the left image
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(
//                             8.0), // Optional: rounded corners
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(
//                             8.0), // Rounded corners for the image
//                         child: Image.network(
//                           'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Replace with your large image URL
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Right Side: Two rows with four images
//                 Expanded(
//                   flex: 1, // Adjusts the space taken by the right images
//                   child: Column(
//                     children: [
//                       // First Row with Two Images
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Optional: rounded corners
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Rounded corners for the image
//                                   child: Image.network(
//                                     'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Replace with your image URL
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 8), // Space between images
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Optional: rounded corners
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Rounded corners for the image
//                                   child: Image.network(
//                                     'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Replace with your image URL
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 8), // Space between rows
//                       // Second Row with Two Images
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Optional: rounded corners
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Rounded corners for the image
//                                   child: Image.network(
//                                     'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Replace with your image URL
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 8), // Space between images
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Optional: rounded corners
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(
//                                       8.0), // Rounded corners for the image
//                                   child: Image.network(
//                                     'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Replace with your image URL
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Navigation bar
//   Widget _buildNavBar(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//       decoration: const BoxDecoration(color: Colors.white, boxShadow: [
//         BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2)
//       ]),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           // Logo
//           Row(
//             children: const [
//               Icon(Icons.hotel, size: 40, color: Colors.blueAccent),
//               SizedBox(width: 8),
//               Text(
//                 'Hotel Logo',
//                 style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87),
//               ),
//             ],
//           ),

//           // Navigation links
//           Row(
//             children: [
//               _buildNavItem('Home', true),
//               _buildNavItem('About', false),
//               _buildNavItem('Newsletter', false),
//               _buildNavItem('Rooms', false),
//               _buildNavItem('Services', false),
//               _buildNavItem('Pricing', false),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // Carousel Section
//   Widget _buildCarouselSection(BuildContext context) {
//     return Stack(
//       children: [
//         // Carousel Slider
//         CarouselSlider(
//           options: CarouselOptions(
//             height: MediaQuery.of(context).size.height * 0.6,
//             viewportFraction: 1.0,
//             autoPlay: true,
//             autoPlayInterval: Duration(seconds: 5),
//           ),
//           items: carouselImages.map((imageUrl) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return Container(
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(imageUrl),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 );
//               },
//             );
//           }).toList(),
//         ),

//         // Overlay with Text
//         Positioned.fill(
//           child: Container(
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.black.withOpacity(0.4),
//                   Colors.black.withOpacity(0.4),
//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//             child: const Text(
//               'Discover Extraordinary Comfort in Hotels',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Navigation bar item
//   Widget _buildNavItem(String title, bool isActive) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//       child: TextButton(
//         onPressed: () {},
//         child: Text(
//           title,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
//             color: isActive ? Colors.blue : Colors.black87,
//           ),
//         ),
//       ),
//     );
//   }
// }
