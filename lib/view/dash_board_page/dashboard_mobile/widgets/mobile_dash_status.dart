import 'package:flutter/material.dart';

class DashMobileQuickStats extends StatelessWidget {
  const DashMobileQuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          StatCard(title: 'Total Hotels', value: '120', icon: Icons.hotel),
          SizedBox(height: 8),
          StatCard(
              title: 'Active Bookings', value: '450', icon: Icons.book_online),
          SizedBox(height: 8),
          StatCard(
              title: 'Revenue', value: '\$35,000', icon: Icons.attach_money),
          SizedBox(height: 8),
          StatCard(title: 'Users', value: '2,320', icon: Icons.people),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 32, color: Colors.blue),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
