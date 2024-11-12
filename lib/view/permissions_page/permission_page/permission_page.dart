import 'package:flutter/material.dart';
import 'package:hotel_admin/view/permissions_page/permission_page/permission_mobile.dart';
import 'package:hotel_admin/view/permissions_page/permission_page/permission_web.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const PermissionsMobileSection();
          } else {
            return const PermissionsWebSection();
          }
        },
      ),
    );
  }
}
