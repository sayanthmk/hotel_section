import 'package:flutter/material.dart';
import 'package:hotel_admin/controller/data_service.dart/admin_data_service.dart';
import 'package:hotel_admin/model/hotel_model.dart';
import 'package:provider/provider.dart';

class PermissionHeaderSection extends StatelessWidget {
  final HotelModel? hotel;
  const PermissionHeaderSection({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final hotelProvider =
        Provider.of<AdminHotelProvider>(context, listen: false);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hotel ID Section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.blue.shade100,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.hotel_rounded,
                  size: 18,
                  color: Colors.blue.shade700,
                ),
                const SizedBox(width: 8),
                Text(
                  'Hotel ID: ${hotel!.hotelId}'.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue.shade700,
                        letterSpacing: 0.5,
                      ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Action Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Reject Button
              _buildActionButton(
                context: context,
                onPressed: () {
                  // Implement reject functionality
                },
                icon: Icons.close_rounded,
                label: 'Reject',
                isReject: true,
              ),
              const SizedBox(width: 12),
              // Approve Button
              _buildActionButton(
                context: context,
                onPressed: () async {
                  try {
                    await hotelProvider.approveHotel(hotel!);
                    Navigator.pop(context);
                    _showSuccessSnackbar(context);
                  } catch (e) {
                    _showErrorSnackbar(context);
                  }
                },
                icon: Icons.check_rounded,
                label: 'Approve',
                isReject: false,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
    required bool isReject,
  }) {
    final colors = isReject
        ? {
            'background': Colors.red.shade50,
            'foreground': Colors.red.shade600,
            'border': Colors.red.shade200,
            'splash': Colors.red.shade100,
          }
        : {
            'background': Colors.blue.shade500,
            'foreground': Colors.white,
            'border': Colors.blue.shade600,
            'splash': Colors.blue.shade600,
          };

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: isReject ? colors['background'] : colors['background'],
            borderRadius: BorderRadius.circular(12),
            border: isReject
                ? Border.all(color: colors['border']!, width: 1)
                : null,
            boxShadow: isReject
                ? null
                : [
                    BoxShadow(
                      color: Colors.blue.shade300.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20,
                color: colors['foreground'],
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors['foreground'],
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.check_circle_outline,
                color: Colors.green.shade100, size: 20),
            const SizedBox(width: 8),
            const Text('Hotel approved successfully!'),
          ],
        ),
        backgroundColor: Colors.green.shade800,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(8),
      ),
    );
  }

  void _showErrorSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.error_outline, color: Colors.red.shade100, size: 20),
            const SizedBox(width: 8),
            const Text('Failed to approve hotel. Please try again.'),
          ],
        ),
        backgroundColor: Colors.red.shade800,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(8),
      ),
    );
  }
}
