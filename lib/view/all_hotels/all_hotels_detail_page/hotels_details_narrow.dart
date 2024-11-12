import 'package:flutter/material.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_detail_page/widgets/hotel_per_row.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/contact_details.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_genaral_info.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_image.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/finance_card.dart';

class HotelDetailNarrowLayout extends StatelessWidget {
  final HotelModel? hotel;
  const HotelDetailNarrowLayout({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HotelsPermissionHeaderSection(hotel: hotel),
          const SizedBox(height: 16),
          GeneralInformation(hotel: hotel),
          const SizedBox(height: 16),
          MediaSection(hotel: hotel),
          const SizedBox(height: 16),
          FinanceDetails(hotel: hotel),
          const SizedBox(height: 16),
          ContactDetails(hotel: hotel),
        ],
      ),
    );
  }
}
