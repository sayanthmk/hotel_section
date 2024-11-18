import 'package:flutter/material.dart';

class CustomFilterButtons extends StatelessWidget {
  final VoidCallback? onSelectDatePressed;
  final VoidCallback? onFiltersPressed;

  const CustomFilterButtons({
    super.key,
    this.onSelectDatePressed,
    this.onFiltersPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE0E0E0)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calendar_view_day_rounded,
                    size: 18, color: Color(0xFF5B6871)),
                SizedBox(width: 8), 
                Text(
                  "Select Date",
                  style: TextStyle(color: Color(0xFF5B6871)),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE0E0E0)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.filter_list, size: 18, color: Color(0xFF5B6871)),
                SizedBox(width: 8),
                Text(
                  "Filters",
                  style: TextStyle(color: Color(0xFF5B6871)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
