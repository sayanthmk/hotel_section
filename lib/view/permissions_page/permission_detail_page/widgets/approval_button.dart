import 'package:flutter/material.dart';

class ApprovalActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final bool isReject;

  const ApprovalActionButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.isReject,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        splashColor: colors['splash'],
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: colors['background'],
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
}
