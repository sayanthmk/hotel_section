import 'package:flutter/material.dart';

class HotelListHeading extends StatelessWidget {
  const HotelListHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F4F8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(
                'Hotel Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Expanded(
              flex: 2,
              child: Text(
                'Type',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Expanded(
              flex: 2,
              child: Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Expanded(
              flex: 2,
              child: Text(
                'Location',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Action',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
        ],
      ),
    );
  }
}
