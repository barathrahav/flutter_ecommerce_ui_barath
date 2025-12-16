import 'package:flutter/material.dart';
import '../widgets/top_search_bar.dart';
import '../widgets/banner_card.dart';
import '../widgets/categories_grid.dart';
import '../widgets/flash_deals_list.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                const TopSearchBar(),
                const SizedBox(height: 16),
                const BannerCard(),
                const SizedBox(height: 20),
                const Text(
                  'Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                const CategoriesGrid(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Flash Deals for You',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Color(0xFF2F6BFF)),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const FlashDealsList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
