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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  productData['imagePath'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback si l'image n'existe pas
                    return Container(
                      color: Colors.grey[100],
                      child: Center(
                        child: Icon(
                          Icons.image_not_supported,
                          size: 40,
                          color: Colors.grey[400],
                        ),
                      ),
                    );
                  },
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

// Données de démonstration avec images
final List<Map<String, dynamic>> productList = [
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'imagePath': 'images/image1.webp',
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'imagePath': 'images/image2.png',
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'imagePath': 'images/image3.jpg',
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'imagePath': 'images/image4.jpeg',
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'imagePath': 'images/image5.jpg',
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$55.00',
    'stock': 'Stock 57',
    'imagePath': 'images/image6.jpg',
  },
  {
    'title': 'Amazon Echo Plus (3rd Gen)',
    'subtitle': '- Premium Quality',
    'price': '\$45.00 - \$65.00',
    'stock': 'Stock 57',
    'imagePath': 'images/image7.webp',
  },
];