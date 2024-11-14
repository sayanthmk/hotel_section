import 'package:flutter/material.dart';

class SuccessSnackBar extends StatelessWidget {
  final String message;

  const SuccessSnackBar({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Row(
        children: [
          Icon(Icons.check_circle_outline,
              color: Colors.green.shade100, size: 20),
          const SizedBox(width: 8),
          Text(message),
        ],
      ),
      backgroundColor: Colors.green.shade800,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(8),
    );
  }
}

class ErrorSnackBar extends StatelessWidget {
  final String message;

  const ErrorSnackBar({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Row(
        children: [
          Icon(Icons.error_outline, color: Colors.red.shade100, size: 20),
          const SizedBox(width: 8),
          Text(message),
        ],
      ),
      backgroundColor: Colors.red.shade800,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(8),
    );
  }
}
