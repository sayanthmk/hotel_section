// // Custom Wide Layout Widget
// import 'package:flutter/material.dart';

// class GeneralInformation extends StatelessWidget {
//   const GeneralInformation({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'General Information',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             SizedBox(height: 16),
//             InfoRow(
//               label: 'Hotel Name',
//               value: Text(
//                 'Capital Hotel',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 12),
//             InfoRow(label: 'Document', value: PDFIcon()),
//             SizedBox(height: 16),
//             Text(
//               'Category',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             InfoRow(
//               label: 'Hotel Category',
//               value: Text(
//                 'Resort',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 12),
//             InfoRow(
//               label: 'Location',
//               value: Text(
//                 '112,Street2,Mumbai,MH',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               'Status',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             StatusChip(status: 'Available'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Custom Media Section Widget
// class MediaSection extends StatelessWidget {
//   const MediaSection({super.key});

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
//               itemCount: 5,
//               itemBuilder: (context, index) {
//                 return ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Image.network(
//                     'https://picsum.photos/300',
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
//   const FinanceDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Finance Details',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             SizedBox(height: 16),
//             InfoRow(
//               label: 'GST Number',
//               value: Text(
//                 '347645387625487',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 12),
//             InfoRow(
//               label: 'Annual Revenue',
//               value: Text(
//                 '₹ 20,00,000',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Custom Contact Details Widget
// class ContactDetails extends StatelessWidget {
//   const ContactDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Contact Details',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             SizedBox(height: 16),
//             InfoRow(
//               label: 'Contact Name',
//               value: Text(
//                 'John Doe',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(height: 12),
//             InfoRow(
//               label: 'Phone Number',
//               value: Text(
//                 '+91 9876543210',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class InfoRow extends StatelessWidget {
//   final String label;
//   final Widget value;

//   const InfoRow({
//     Key? key,
//     required this.label,
//     required this.value,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(label),
//         value,
//       ],
//     );
//   }
// }

// class PDFIcon extends StatelessWidget {
//   const PDFIcon({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       children: [
//         Icon(Icons.picture_as_pdf, color: Colors.red),
//         SizedBox(width: 4),
//         Text('Document.pdf', style: TextStyle(fontWeight: FontWeight.bold)),
//       ],
//     );
//   }
// }

// // Custom Status Chip Widget
// class StatusChip extends StatelessWidget {
//   final String status;

//   const StatusChip({
//     Key? key,
//     required this.status,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Chip(
//       label: Text(status),
//       backgroundColor: Colors.green[100],
//       labelStyle: const TextStyle(color: Colors.green),
//     );
//   }
// }
