import 'package:flutter/material.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/detail_widgets.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/info_row.dart';

class GeneralInformation extends StatelessWidget {
  final HotelModel? hotel;
  const GeneralInformation({super.key, required this.hotel});

  // Future<void> _viewPDF() async {
  //   // Implement PDF viewing logic
  //   if (hotel?.documentUrl != null) {
  //     final Uri url = Uri.parse(hotel!.documentUrl!);
  //     if (await canLaunchUrl(url)) {
  //       await launchUrl(url);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    if (hotel == null) {
      return const SizedBox.shrink();
    }

    return Card(
      elevation: 4,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            const SectionHeader(
              icon: Icons.info_outline_rounded,
              title: 'General Information',
            ),
            const SizedBox(height: 24),

            // Basic Information Section
            InfoSection(
              children: [
                EnhancedInfoRow(
                  icon: Icons.hotel_rounded,
                  label: 'Hotel Name',
                  value: hotel!.hotelName,
                  valueStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                InkWell(
                  // onTap: _viewPDF,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.red.shade100,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.picture_as_pdf_rounded,
                          color: Colors.red.shade700,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'View Documentation',
                          style: TextStyle(
                            color: Colors.red.shade700,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.open_in_new_rounded,
                          color: Colors.red.shade700,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Category Section
            const SectionDivider(),
            const SectionHeader(
              icon: Icons.category_rounded,
              title: 'Category',
              fontSize: 16,
            ),
            const SizedBox(height: 16),
            InfoSection(
              children: [
                EnhancedInfoRow(
                  icon: Icons.hotel_class_rounded,
                  label: 'Hotel Category',
                  value: hotel!.hotelType,
                ),
                const SizedBox(height: 16),
                EnhancedInfoRow(
                  icon: Icons.location_city_rounded,
                  label: 'City',
                  value: hotel!.city,
                ),
                const SizedBox(height: 16),
                EnhancedInfoRow(
                  icon: Icons.map_rounded,
                  label: 'State',
                  value: hotel!.state,
                ),
                const SizedBox(height: 16),
                EnhancedInfoRow(
                  icon: Icons.public_rounded,
                  label: 'Country',
                  value: hotel!.country,
                ),
              ],
            ),

            // Status Section
            const SectionDivider(),
            const SectionHeader(
              icon: Icons.analytics_rounded,
              title: 'Status',
              fontSize: 16,
            ),
            const SizedBox(height: 16),
            StatusIndicator(status: hotel!.city),
          ],
        ),
      ),
    );
  }
}
