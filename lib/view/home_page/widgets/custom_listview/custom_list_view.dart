import 'package:flutter/material.dart';
import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_detail_page/hotel_detail.dart';
import 'package:hotel_admin/view/all_hotels/all_hotels_detail_page/hotels_details.dart';
import 'package:hotel_admin/view/home_page/hotel_detail_page/hotel_detail_page.dart';
import 'package:provider/provider.dart';

class CustomListViewPage extends StatelessWidget {
  const CustomListViewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    final hotelProvider = Provider.of<AdminHotelProvider>(context);

    if (hotelProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (hotelProvider.errorMessage.isNotEmpty) {
      return Center(child: Text('Error: ${hotelProvider.errorMessage}'));
    }

    final hotels = hotelProvider.hotels;
    return Expanded(
      child: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, rowIndex) {
          HotelModel hotel = hotels[rowIndex];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HotelsDetailsPageSection(hotel: hotel),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenWidth * 0.13,
                  height: 70,
                  color: Colors.redAccent,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          hotel.hotelName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Hotel ID
                Container(
                  width: screenWidth * 0.08,
                  height: 70,
                  color: Colors.green,
                  child: const Center(
                    child: Text('12131313'),
                  ),
                ),
                // Hotel type
                Container(
                  width: screenWidth * 0.10,
                  height: 70,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      hotel.hotelType,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Availability
                Container(
                  width: screenWidth * 0.10,
                  height: 70,
                  color: hotel.hotelName == "Available"
                      ? Colors.green
                      : Colors.red,
                  child: Center(
                    child: Text(
                      hotel.emailAddress,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Contact
                Container(
                  width: screenWidth * 0.10,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      hotel.panNumber,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Country
                Container(
                  width: screenWidth * 0.10,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      hotel.country,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Hotel state
                Container(
                  width: screenWidth * 0.10,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      hotel.state,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.10,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      hotel.state,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
