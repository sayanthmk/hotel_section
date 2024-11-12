import 'package:flutter/material.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/contact_details.dart';
import 'package:hotel_admin/view/permissions_page/permission_detail_page/widgets/detail_approvel_line.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_genaral_info.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_image.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/finance_card.dart';

class WideLayout extends StatelessWidget {
  final HotelModel? hotel;
  const WideLayout({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PermissionHeaderSection(hotel: hotel),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    GeneralInformation(hotel: hotel),
                    const SizedBox(height: 24),
                    MediaSection(hotel: hotel),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    FinanceDetails(hotel: hotel),
                    const SizedBox(height: 24),
                    ContactDetails(hotel: hotel),
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
