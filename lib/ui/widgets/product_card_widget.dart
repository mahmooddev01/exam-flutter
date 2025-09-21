import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> productData;

  const ProductCard({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image du produit
          Expanded(
            flex: 4,
            child: Container(
              // width: double.infinity,
              decoration: BoxDecoration(
                color: productData['backgroundColor'],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Icon(
                  productData['icon'],
                  size: 60,
                  color: productData['iconColor'],
                ),
              ),
            ),
          ),

          // Informations du produit
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productData['title'],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    productData['subtitle'],
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productData['price'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6366F1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        productData['stock'],
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Données de démonstration
final List<Map<String, dynamic>> productList = [
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'backgroundColor': Colors.grey[300],
    'icon': Icons.speaker,
    'iconColor': Colors.grey[600],
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'backgroundColor': Colors.brown[200],
    'icon': Icons.headset,
    'iconColor': Colors.brown[600],
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'backgroundColor': Colors.grey[300],
    'icon': Icons.camera_alt,
    'iconColor': Colors.grey[700],
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'backgroundColor': Colors.amber[200],
    'icon': Icons.headphones,
    'iconColor': Colors.black,
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'backgroundColor': Colors.grey[300],
    'icon': Icons.watch,
    'iconColor': Colors.grey[600],
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'backgroundColor': Colors.grey[400],
    'icon': Icons.camera,
    'iconColor': Colors.red,
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$65.00',
    'stock': 'Stock 57',
    'backgroundColor': Colors.grey[700],
    'icon': Icons.camera_outlined,
    'iconColor': Colors.white,
  },
];