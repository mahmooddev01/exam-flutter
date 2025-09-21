import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final bool hasExpansion;

  const SidebarItem({
    Key? key,
    required this.icon,
    required this.label,
    this.isActive = false,
    this.hasExpansion = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFEEF2FF) : null,
        borderRadius: BorderRadius.circular(6),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? const Color(0xFF6366F1) : Colors.grey,
          size: 20,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? const Color(0xFF6366F1) : Colors.grey[700],
            fontSize: 14,
            fontWeight: isActive ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
        trailing: hasExpansion ? const Icon(Icons.expand_more, size: 16) : null,
        dense: true,
      ),
    );
  }
}