import 'package:flutter/material.dart';
import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
import 'package:hotel_admin/view/main_page/widgets/draweritems.dart';
import 'package:provider/provider.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.watch<AdminHotelProvider>().selectedIndex;

    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            // _buildDrawerHeader(),
            const DrawerHeaderWidget(
              logoPath: 'assets/hotel_logo.png', // Path to your logo image
              title: 'StayWise',
              subtitle: 'Admin Panel',
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerItemWidget(
                    icon: Icons.dashboard,
                    title: 'Dashboard',
                    selected: selectedIndex == 0,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(0),
                  ),
                  DrawerItemWidget(
                    icon: Icons.hotel,
                    title: 'Hotels List',
                    selected: selectedIndex == 1,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(1),
                  ),
                  DrawerItemWidget(
                    icon: Icons.person,
                    title: 'Permissions',
                    selected: selectedIndex == 2,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(2),
                  ),
                  DrawerItemWidget(
                    icon: Icons.bar_chart,
                    title: 'Reports',
                    selected: selectedIndex == 3,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(3),
                  ),
                  DrawerItemWidget(
                    icon: Icons.settings,
                    title: 'Settings',
                    selected: selectedIndex == 4,
                    onTap: () => context
                        .read<AdminHotelProvider>()
                        .updateSelectedIndex(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
