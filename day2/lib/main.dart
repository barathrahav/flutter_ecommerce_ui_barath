import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/phone_frame.dart';

void main() {
  runApp(const Day1App());
}

class Day1App extends StatelessWidget {
  const Day1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F6FB),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: Scaffold(
  backgroundColor: const Color(0xFFE5E7EB), // outer bg
  body: PhoneFrame(
    child: const HomeScreen(),
  ),
),
    );
  }
}

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
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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

/* ---------------- TOP SEARCH BAR ---------------- */

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(Icons.qr_code_scanner),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: const [
                SizedBox(width: 12),
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Icon(Icons.camera_alt_outlined, color: Colors.grey),
                SizedBox(width: 12),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}

/* ---------------- BANNER ---------------- */

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background Card
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF4E6EF2),
                  Color(0xFF8A9AF5),
                ],
              ),
            ),
            padding: const EdgeInsets.fromLTRB(20, 20, 120, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'iPhone 16 Pro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Extraordinary Visual\n& Exceptional Power',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    height: 1.3,
                  ),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Color(0xFF2F6BFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // iPhone Image (OVERFLOWING)
          Positioned(
            right: 5,
            bottom: 0,
            child: Image.asset(
              'assets/images/iphone.png',
              height: 160,
              fit: BoxFit.contain,
            ),
          ),

          // Carousel dots
          Positioned(
            left: 150,
            bottom: 6,
            child: Row(
              children: List.generate(6, (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 6),
                  width: index == 0 ? 16 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color:
                        index == 0 ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}




/* ---------------- FLASH DEALS ---------------- */

class FlashDealsList extends StatelessWidget {
  const FlashDealsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return const FlashDealCard();
        },
      ),
    );
  }
}

class FlashDealCard extends StatelessWidget {
  const FlashDealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F2F6),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Apple iPhone 16',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          const Text(
            '\$1,299',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF2F6BFF),
            ),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF2F6BFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/* ---------------- CATEGORIES ---------------- */

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Mobile',
      'Headphone',
      'Tablets',
      'Laptop',
      'Speakers',
      'More'
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.devices_other),
            ),
            const SizedBox(height: 8),
            Text(
              categories[index],
              style: const TextStyle(fontSize: 12),
            ),
          ],
        );
      },
    );
  }
}

/* ---------------- BOTTOM NAV BAR ---------------- */

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF2F6BFF),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline), label: 'Chat'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}

