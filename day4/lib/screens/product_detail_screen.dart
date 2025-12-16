import 'package:flutter/material.dart';
import '../widgets/product_image_section.dart';
import '../widgets/bottom_action_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      body: SafeArea(
        child: Column(
          children: const [
            ProductImageSection(),
            Expanded(child: ProductDetails()),
          ],
        ),
      ),
      bottomNavigationBar: const BottomActionBar(),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'iPhone 16 Pro Max',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(
            'By Apple  •  ⭐ 4.9 (2.2k)',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 12),
          Text(
            '\$1399.99',
            style: TextStyle(
              fontSize: 22,
              color: Color(0xFF2F6BFF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
