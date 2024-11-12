// dashboard.dart
import 'package:flutter/material.dart';
import 'package:hotel_admin/view/dash_board_page/dash_mobile.dart';
import 'package:hotel_admin/view/dash_board_page/dash_web.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const MobileDashboard();
          } else {
            return WebDashboard();
          }
        },
      ),
    );
  }
}
