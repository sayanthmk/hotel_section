import 'package:flutter/material.dart';
import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/view/permissions_page/permission_detail_page/permission_detail.dart';
import 'package:hotel_admin/widgets/list_widgets/list_page/all_hotel_search.dart';
import 'package:hotel_admin/widgets/list_widgets/list_page/filterbutton.dart';
import 'package:hotel_admin/widgets/list_widgets/list_page/sort_button.dart';
import 'package:hotel_admin/widgets/list_widgets/list_page/userinfo.dart';
import 'package:provider/provider.dart';

class PermissionsMobileSection extends StatelessWidget {
  const PermissionsMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final hotelProvider = Provider.of<AdminHotelProvider>(context);

    if (hotelProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (hotelProvider.errorMessage.isNotEmpty) {
      return Center(child: Text('Error: ${hotelProvider.errorMessage}'));
    }

    final hotels = hotelProvider.nonApprovedHotels;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const CustomHotelSearchBar(),
                const SizedBox(height: 16),
                UserInfo(
                  userName: "John Doe",
                  userInitials: "JD",
                  onNotificationsPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    SortButton(
                      text: "All Hotels",
                      isActive: true,
                      onPressed: () {},
                    ),
                    SortButton(
                      text: "Available",
                      isActive: false,
                      onPressed: () {},
                    ),
                    SortButton(
                      text: "Occupied",
                      isActive: false,
                      onPressed: () {},
                    ),
                    SortButton(
                      text: "Maintenance",
                      isActive: false,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CustomFilterButtons(
                  onSelectDatePressed: () {},
                  onFiltersPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hotels.length,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                HotelModel hotel = hotels[index];
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    title: Text(hotel.hotelName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('${hotel.hotelType} - ${hotel.country}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios, size: 18),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PermissionsDetailsPageSection(hotel: hotel),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
