import 'package:flutter/material.dart';

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
