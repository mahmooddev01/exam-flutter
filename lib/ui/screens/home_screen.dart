import 'package:flutter/material.dart';
import '../widgets/main_widget.dart';
import '../widgets/sidebar_widget.dart';

class SubstanceScreen extends StatelessWidget {
  const SubstanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: Colors.white,
            child: const Sidebar(),
          ),
          // Main content
          Expanded(
            child: Container(
              color: Colors.white,
              child: const MainContent(),
            ),
          ),
        ],
      ),
    );
  }
}