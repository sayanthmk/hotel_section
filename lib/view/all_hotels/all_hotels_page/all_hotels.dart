import 'package:flutter/material.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_page/mobile_section.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_page/web_section.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const AllhotelsMobileSection();
          } else {
            return const AllHotelsWebSection();
          }
        },
      ),
    );
  }
}
