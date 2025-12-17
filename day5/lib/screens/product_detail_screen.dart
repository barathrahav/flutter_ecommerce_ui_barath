import 'package:flutter/material.dart';
import '../widgets/product_image_section.dart';
import '../widgets/thumbnail_selector.dart';
import '../widgets/color_selector.dart';
import '../widgets/storage_selector.dart';
import '../widgets/quantity_selector.dart';
import '../widgets/snapshot_section.dart';
import '../widgets/bottom_action_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      body: SafeArea(
        child: Stack(
          children: [
            /// 🔹 Scrollable Content
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 120), // 👈 IMPORTANT
              child: Column(
                children: const [
                  ProductImageSection(),
                  SizedBox(height: 12),
                  ThumbnailSelector(),
                  ProductInfo(),
                ],
              ),
            ),

            /// 🔹 Floating Bottom Bar (iOS style)
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BottomActionBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

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
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          SizedBox(height: 12),

          Row(
            children: [
              Text(
                '\$1399.99',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '\$1499.99',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              QuantitySelector(),
            ],
          ),

          SizedBox(height: 20),
          ColorSelector(),
          SizedBox(height: 20),
          StorageSelector(),
          SizedBox(height: 24),

          /// 👇 THIS WILL NOW BE VISIBLE
          SnapshotSection(),
        ],
      ),
    );
  }
}
