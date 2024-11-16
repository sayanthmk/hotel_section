import 'package:flutter/material.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_mobile/widgets/mobile_dash_analytic.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_mobile/widgets/mobile_dash_carousel.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_mobile/widgets/mobile_dash_hotelcard.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_mobile/widgets/mobile_dash_nav.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_mobile/widgets/mobile_dash_status.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DashMobileNavBar(),
          const SizedBox(height: 16),
          DashMobileCarousel(),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const DashMobileQuickStats(),
          const SizedBox(height: 16),
          const DashMobileAnalytics(),
          const SizedBox(height: 16),
          const MobileHotelGrid(),
        ],
      ),
    );
  }
}
