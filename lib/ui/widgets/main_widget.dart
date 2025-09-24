import 'package:flutter/material.dart';
import 'product_card_widget.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8FAFC),
      child: Column(
        children: [
          // Top Header avec barre de recherche
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Barre de recherche principale
                SizedBox(
                  width: 250,
                  height: 35,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Colors.grey, size: 18),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      isDense: true
                    ),
                  ),
                ),
                // Avatar utilisateur avec notifications
                Row(
                  children: [
                    Stack(
                      children: [
                        const Icon(Icons.notifications, color: Colors.grey, size: 22),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: const AssetImage('images/avatar.png'),
                          child: null,
                        ),
                        const SizedBox(width: 8),
                        const Text('Maxbert', style: TextStyle(fontSize: 14)),
                        const SizedBox(width: 5),
                        const Icon(Icons.expand_more, size: 16, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Section Group Header
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Group',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search group...',
                          hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                          suffixIcon: Icon(Icons.search, color: Colors.grey, size: 18),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF6366F1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.add, color: Colors.white, size: 16),
                          SizedBox(width: 6),
                          Text(
                            'Add Group',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Product Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                ),
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    productData: productList[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}