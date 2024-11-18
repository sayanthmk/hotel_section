import 'package:flutter/material.dart';

class PageNavigateContainer extends StatelessWidget {
  const PageNavigateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    return Container(
      width: screenWidth * 0.97,
      height: 50,
      color: Colors.lightBlueAccent,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 100,
              color: Colors.redAccent,
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
