// mobile_dashboard.dart
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
          // _buildMobileNavBar(),
          DashMobileNavBar(),
          const SizedBox(height: 16),
          // _buildMobileCarousel(),
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
          // _buildMobileHeader(),
          const SizedBox(height: 16),
          // _buildMobileQuickStats(),
          const DashMobileQuickStats(),
          const SizedBox(height: 16),
          // _buildMobileAnalytics(),
          const DashMobileAnalytics(),
          const SizedBox(height: 16),
          const MobileHotelGrid(),
          // _buildMobileHotelGrid(),
        ],
      ),
    );
  }
}
