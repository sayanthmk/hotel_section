import 'package:flutter/material.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/view/permissions_page/permission_detail_page/permisiion_web_sec.dart';
import 'package:hotel_admin/view/permissions_page/permission_detail_page/permission_moblie_sec.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_top_container.dart';

class PermissionsDetailsPageSection extends StatelessWidget {
  final HotelModel? hotel;
  const PermissionsDetailsPageSection({super.key, this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const EnhancedTopContainer(
                  title: 'Permissions Details',
                ),
                if (constraints.maxWidth > 600)
                  WideLayout(hotel: hotel)
                else
                  NarrowLayout(hotel: hotel),
              ],
            ),
          );
        },
      ),
    );
  }
}
