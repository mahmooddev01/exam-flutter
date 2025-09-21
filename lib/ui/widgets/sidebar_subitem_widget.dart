import 'package:flutter/material.dart';

class SidebarSubItem extends StatelessWidget {
  final String label;
  final bool isActive;

  const SidebarSubItem({
    Key? key,
    required this.label,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 10, top: 2, bottom: 2),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFEEF2FF) : null,
        borderRadius: BorderRadius.circular(6),
      ),
      child: ListTile(
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? const Color(0xFF6366F1) : Colors.grey[600],
            fontSize: 13,
            fontWeight: isActive ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
        dense: true,
      ),
    );
  }
}