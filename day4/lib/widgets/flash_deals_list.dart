import 'package:flutter/material.dart';
import 'flash_deal_card.dart';

class FlashDealsList extends StatelessWidget {
  FlashDealsList({super.key});

  final List<Map<String, String>> items = [
    {
      'title': 'iPhone 16',
      'price': '\$1299',
      'image': 'assets/images/mobile.png',
    },
    {
      'title': 'Laptop Pro',
      'price': '\$1999',
      'image': 'assets/images/laptop.png',
    },
    {
      'title': 'Headphones',
      'price': '\$299',
      'image': 'assets/images/headphone.png',
    },
    {
      'title': 'Speaker',
      'price': '\$199',
      'image': 'assets/images/speakers.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return FlashDealCard(
            title: items[index]['title']!,
            price: items[index]['price']!, // ✅ FIX
            image: items[index]['image']!,
          );
        },
      ),
    );
  }
}
