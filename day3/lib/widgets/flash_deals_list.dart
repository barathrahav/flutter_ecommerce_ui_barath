import 'package:flutter/material.dart';
import 'flash_deal_card.dart';

class FlashDealsList extends StatelessWidget {
  FlashDealsList({super.key});

  final List<Map<String, String>> deals = [
    {
      'title': 'iPhone 16',
      'price': '\$1,299',
      'image': 'assets/images/mobile.png',
    },
    {
      'title': 'MacBook Pro',
      'price': '\$2,099',
      'image': 'assets/images/laptop.png',
    },
    {
      'title': 'iPad Air',
      'price': '\$799',
      'image': 'assets/images/tablet.png',
    },
    {
      'title': 'Headphones',
      'price': '\$299',
      'image': 'assets/images/headphone.png',
    },
    {
      'title': 'Speakers',
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
        itemCount: deals.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final item = deals[index];

          return FlashDealCard(
            title: item['title']!,
            price: item['price']!,
            image: item['image']!,
          );
        },
      ),
    );
  }
}
