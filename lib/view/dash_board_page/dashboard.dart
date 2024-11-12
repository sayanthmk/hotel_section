// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:table_calendar/table_calendar.dart';

// class DashBoard extends StatelessWidget {
//   final List<String> carouselImages = [
//     'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//     'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//     'https://images.unsplash.com/photo-1529290130-4ca3753253ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//   ];
//   DashBoard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             _buildNavBar(context),
//             const SizedBox(height: 24),
//             _buildCarouselSection(context),
//             const SizedBox(height: 24),
//             _buildHeader(),
//             const SizedBox(height: 20),
//             _buildQuickStats(),
//             const SizedBox(height: 20),
//             _chartsAndCalendarSection(),
//             const SizedBox(height: 24),
//             _buildHotelManagement(),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

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
//           const Row(
//             children: [
//               // Icon(Icons.hotel, size: 40, color: Colors.blueAccent),
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

//   Widget _buildHeader() {
//     return const Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'Super Admin Dashboard',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           Row(
//             children: [
//               // _buildHeaderAction(Icons.notifications, '5'),
//               SizedBox(width: 10),
//               // _buildHeaderAction(Icons.message, '3'),
//               SizedBox(width: 10),
//               // ElevatedButton.icon(
//               //   onPressed: () {
//               //     // Handle adding new hotel
//               //   },
//               //   icon: const Icon(Icons.add),
//               //   label: const Text('Add New Hotel'),
//               //   style: ElevatedButton.styleFrom(
//               //     backgroundColor: Colors.blue,
//               //     foregroundColor: Colors.white,
//               //   ),
//               // ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildQuickStats() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GridView.count(
//         crossAxisCount: 4,
//         shrinkWrap: true,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//         childAspectRatio: 1.5,
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//           _buildStatCard('Total Hotels', '120', Icons.hotel, Colors.blue),
//           _buildStatCard(
//               'Active Bookings', '450', Icons.book_online, Colors.green),
//           _buildStatCard(
//               'Total Revenue', '\$35,000', Icons.attach_money, Colors.orange),
//           _buildStatCard('Active Users', '2,320', Icons.people, Colors.purple),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatCard(
//       String title, String value, IconData icon, Color color) {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 2,
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Icon(icon, color: color, size: 30),
//           const SizedBox(height: 10),
//           Text(
//             value,
//             style: const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(
//             title,
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHotelManagement() {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Hotel Management',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Handle adding new hotel
//                   },
//                   icon: const Icon(Icons.add),
//                   label: const Text('Add Hotel'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     foregroundColor: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             // _buildHotelGrid(),
//             GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 childAspectRatio: 0.8,
//               ),
//               itemCount: 8,
//               itemBuilder: (context, index) {
//                 return
//                     // _buildHotelCard();
//                     Card(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: 120,
//                         decoration: BoxDecoration(
//                           borderRadius: const BorderRadius.vertical(
//                               top: Radius.circular(4)),
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://picsum.photos/200/300?random=${DateTime.now().millisecond}'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(12),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               'Grand Hotel',
//                               style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                             const SizedBox(height: 4),
//                             Text(
//                               'New York, USA',
//                               style: TextStyle(
//                                   color: Colors.grey[600], fontSize: 14),
//                             ),
//                             const SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 const Icon(Icons.star,
//                                     color: Colors.amber, size: 16),
//                                 const Text(' 4.5'),
//                                 const Spacer(),
//                                 Text(
//                                   '\$200/night',
//                                   style: TextStyle(
//                                       color: Colors.grey[800],
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCarouselSection(BuildContext context) {
//     return Stack(
//       children: [
//         // Carousel Slider
//         CarouselSlider(
//           options: CarouselOptions(
//             height: MediaQuery.of(context).size.height * 0.6,
//             viewportFraction: 1.0,
//             autoPlay: true,
//             autoPlayInterval: const Duration(seconds: 5),
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

//   Widget _chartsAndCalendarSection() {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Analytics Overview',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 24),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   children: [
//                     // _buildBookingTrendsChart(),
//                     Card(
//                       child: SizedBox(
//                         height: 300,
//                         child: LineChart(
//                           LineChartData(
//                             gridData: const FlGridData(show: true),
//                             titlesData: FlTitlesData(
//                               bottomTitles: AxisTitles(
//                                 sideTitles: SideTitles(
//                                   showTitles: true,
//                                   getTitlesWidget: (value, meta) {
//                                     const months = [
//                                       'Jan',
//                                       'Feb',
//                                       'Mar',
//                                       'Apr',
//                                       'May',
//                                       'Jun'
//                                     ];
//                                     if (value >= 0 && value < months.length) {
//                                       return Text(months[value.toInt()]);
//                                     }
//                                     return const Text('');
//                                   },
//                                 ),
//                               ),
//                             ),
//                             borderData: FlBorderData(show: true),
//                             lineBarsData: [
//                               LineChartBarData(
//                                 spots: const [
//                                   FlSpot(0, 3000),
//                                   FlSpot(1, 4200),
//                                   FlSpot(2, 3800),
//                                   FlSpot(3, 5000),
//                                   FlSpot(4, 4800),
//                                   FlSpot(5, 6000),
//                                 ],
//                                 isCurved: true,
//                                 color: Colors.blue,
//                                 barWidth: 3,
//                                 belowBarData: BarAreaData(
//                                   show: true,
//                                   color: Colors.blue.withOpacity(0.1),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 24),
//                     // _buildRevenueFlowChart(),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 24),
//               Expanded(
//                 child:
//                     // _buildCalendar(),
//                     Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.1),
//                         spreadRadius: 2,
//                         blurRadius: 5,
//                       ),
//                     ],
//                   ),
//                   child: TableCalendar(
//                     firstDay: DateTime.utc(2024, 1, 1),
//                     lastDay: DateTime.utc(2024, 12, 31),
//                     focusedDay: DateTime.now(),
//                     calendarFormat: CalendarFormat.month,
//                     headerStyle: const HeaderStyle(
//                       formatButtonVisible: false,
//                       titleCentered: true,
//                     ),
//                     calendarStyle: const CalendarStyle(
//                       todayDecoration: BoxDecoration(
//                         color: Colors.blue,
//                         shape: BoxShape.circle,
//                       ),
//                       selectedDecoration: BoxDecoration(
//                         color: Colors.blue,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Data model for booking trends
// class BookingData {
//   final String month;
//   final double bookings;

//   BookingData(this.month, this.bookings);
// }
