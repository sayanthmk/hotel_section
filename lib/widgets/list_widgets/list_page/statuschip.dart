import 'package:flutter/material.dart';

class CustomHotelStatusChip extends StatelessWidget {
  final String status;

  const CustomHotelStatusChip({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color chipColor;
    String displayStatus;

    switch (status.toLowerCase()) {
      case 'available':
        chipColor = Colors.green;
        displayStatus = 'Available';
        break;
      case 'occupied':
        chipColor = Colors.orange;
        displayStatus = 'Occupied';
        break;
      default:
        chipColor = Colors.grey;
        displayStatus = 'Maintenance';
    }

    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: chipColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          displayStatus,
          style: TextStyle(color: chipColor, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
