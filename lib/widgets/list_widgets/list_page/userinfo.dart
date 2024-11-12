import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String userName;
  final String userInitials;
  final VoidCallback? onNotificationsPressed;

  const UserInfo({
    super.key,
    this.userName = "John Doe",
    this.userInitials = "JD",
    this.onNotificationsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined,
              color: Color(0xFF5B6871)),
          onPressed: onNotificationsPressed ?? () {},
        ),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 20,
          backgroundColor: Theme.of(context).primaryColor,
          child: Text(
            userInitials,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          userName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF2D3B45),
          ),
        ),
      ],
    );
  }
}
