import 'package:flutter/material.dart';

class CustomHeadingRow extends StatelessWidget {
  final String title;
  final String actionText;

  const CustomHeadingRow({
    super.key,
    required this.title,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            child: Center(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.07,
            height: screenHeight * 0.07,
            decoration: BoxDecoration(
              color: const Color(0xFFF4ECFB),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.download_outlined),
                const SizedBox(width: 10),
                Text(
                  actionText,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
