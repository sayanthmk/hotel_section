import 'package:flutter/material.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_web/widgets/dash_analytics.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_web/widgets/dash_card.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_web/widgets/dash_web_carousel.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_web/widgets/dash_web_nav.dart';
import 'package:hotel_admin/view/dash_board_page/dashboard_web/widgets/dash_web_status.dart';

class WebDashboard extends StatelessWidget {
  const WebDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DashWebNavBar(),
            const SizedBox(height: 24),
            DashWebCarouselSection(),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const DashWebQuickStats(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 2, child: DashWebAnalyticsOverview()),
                      SizedBox(width: 24),
                      Expanded(child: CalendarSection()),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const DashWebHotelManagement(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Data model for booking trends
class BookingData {
  final String month;
  final double bookings;

  BookingData(this.month, this.bookings);
}
