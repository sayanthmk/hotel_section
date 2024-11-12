import 'package:flutter/material.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_detail_page/hotels_detail_wide.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_detail_page/hotels_details_narrow.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_top_container.dart';

class HotelsDetailsPageSection extends StatelessWidget {
  final HotelModel? hotel;
  const HotelsDetailsPageSection({super.key, this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const EnhancedTopContainer(
                  title: 'Hotel Details',
                ),
                if (constraints.maxWidth > 600)
                  HotelDetailWideLayout(hotel: hotel)
                else
                  HotelDetailNarrowLayout(hotel: hotel),
              ],
            ),
          );
        },
      ),
    );
  }
}
