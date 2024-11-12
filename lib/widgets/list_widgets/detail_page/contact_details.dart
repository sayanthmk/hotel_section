import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:hotel_admin/widgets/list_widgets/detail_page/info_row.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetails extends StatelessWidget {
  final HotelModel? hotel;
  const ContactDetails({super.key, required this.hotel});

  Future<void> _launchUrl(String url, String scheme) async {
    final Uri uri = Uri(scheme: scheme, path: url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Copied to clipboard'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black87,
        duration: const Duration(seconds: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (hotel == null) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);

    return Card(
      elevation: 4,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.contact_phone_rounded,
                  color: theme.primaryColor,
                  size: 24,
                ),
                const SizedBox(width: 12),
                const Text(
                  'Contact Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            EnhancedInfoRow(
              icon: Icons.phone_rounded,
              label: 'Phone number',
              value: hotel!.contactNumber,
              onTap: () => _launchUrl(hotel!.contactNumber, 'tel'),
              onLongPress: () =>
                  _copyToClipboard(context, hotel!.contactNumber),
              trailing: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.content_copy, size: 20),
                    onPressed: () =>
                        _copyToClipboard(context, hotel!.contactNumber),
                    tooltip: 'Copy number',
                  ),
                  IconButton(
                    icon: const Icon(Icons.phone, size: 20),
                    onPressed: () => _launchUrl(hotel!.contactNumber, 'tel'),
                    tooltip: 'Call',
                  ),
                ],
              ),
            ),
            const Divider(height: 32),
            EnhancedInfoRow(
              icon: Icons.email_rounded,
              label: 'Email',
              value: hotel!.emailAddress,
              onTap: () => _launchUrl(hotel!.emailAddress, 'mailto'),
              onLongPress: () => _copyToClipboard(context, hotel!.emailAddress),
              trailing: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.content_copy, size: 20),
                    onPressed: () =>
                        _copyToClipboard(context, hotel!.emailAddress),
                    tooltip: 'Copy email',
                  ),
                  IconButton(
                    icon: const Icon(Icons.email, size: 20),
                    onPressed: () => _launchUrl(hotel!.emailAddress, 'mailto'),
                    tooltip: 'Send email',
                  ),
                ],
              ),
            ),
            const Divider(height: 32),
            EnhancedInfoRow(
              icon: Icons.calendar_today_rounded,
              label: 'Booking Since',
              value: hotel!.bookingSince,
              valueStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
