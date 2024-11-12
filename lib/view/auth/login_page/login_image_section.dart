import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final double height;
  final String imagePath;

  const ImageSection({
    super.key,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
