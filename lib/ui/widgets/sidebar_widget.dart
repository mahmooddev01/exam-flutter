import 'package:exam_project/ui/widgets/sidebar_item_widget.dart';
import 'package:exam_project/ui/widgets/sidebar_subitem_widget.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header avec logo
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Icon(
                  Icons.circle,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Substance',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        // Menu items
        const SidebarItem(
          icon: Icons.dashboard,
          label: 'Overview',
          isActive: false,
        ),

        ExpansionTile(
          leading: const Icon(Icons.inventory_2, color: Colors.grey, size: 20,),
          title: Text(
            'Product',
            style: TextStyle(
              color: Color(0xFF374151),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          tilePadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
          children: [
            const SidebarSubItem(label: 'All Products', isActive: false),
            const SidebarSubItem(label: 'Categories', isActive: false),
            const SidebarSubItem(label: 'Group', isActive: true),
          ],
        ),

        const SidebarItem(
          icon: Icons.shopping_cart,
          label: 'Orders',
          isActive: false,
          hasExpansion: true,
        ),

        const SidebarItem(
          icon: Icons.people,
          label: 'Customers',
          isActive: false,
          hasExpansion: true,
        ),

        const SidebarItem(
          icon: Icons.rate_review,
          label: 'Manage Reviews',
          isActive: false,
        ),

        const SidebarItem(
          icon: Icons.shopping_bag,
          label: 'Checkout',
          isActive: false,
        ),

        const SidebarItem(
          icon: Icons.settings,
          label: 'Settings',
          isActive: false,
        ),

        const Spacer(),

        // Bottom section
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Technical help',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Contact us',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Release you maximal potential software',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFF6366F1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'Upgrade to Pro',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}