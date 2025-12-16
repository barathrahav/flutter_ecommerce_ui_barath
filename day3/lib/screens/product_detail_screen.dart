import 'package:flutter/material.dart';
import '../widgets/product_image_section.dart';
import '../widgets/product_info_section.dart';
import '../widgets/product_description.dart';
import '../widgets/product_bottom_bar.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ProductImageSection(),
              ProductInfoSection(),
              ProductDescription(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ProductBottomBar(),
    );
  }
}