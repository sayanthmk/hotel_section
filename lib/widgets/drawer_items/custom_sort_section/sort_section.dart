import 'package:flutter/material.dart';

class CustomSortSection extends StatelessWidget {
  const CustomSortSection({
    super.key,
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
          Container(
            width: screenWidth * 0.30,
            height: screenHeight * 0.07,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      text: 'All Hotels',
                      onTap: () {},
                      widthFactor: 0.06,
                      heightFactor: 0.06,
                      color: Colors.grey,
                    ),
                    CustomButton(
                      text: 'Available',
                      onTap: () {},
                    ),
                    CustomButton(
                      text: 'Service',
                      onTap: () {},
                    ),
                    CustomButton(
                      text: 'Unavailable',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Row(
            children: [
              Container(
                width: screenWidth * 0.10,
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Select Date",
                        style:  TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: screenWidth * 0.07,
                height: screenHeight * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.filter),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double widthFactor;
  final double heightFactor;
  final Color color;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.widthFactor = 0.06, 
    this.heightFactor = 0.06, 
    this.color = Colors.white, 
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: screenWidth * widthFactor,
        height: screenHeight * heightFactor,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

                  