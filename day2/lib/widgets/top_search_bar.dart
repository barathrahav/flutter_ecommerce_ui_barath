import 'package:flutter/material.dart';

class TopSearchBar extends StatelessWidget {
  const TopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _iconBox(Icons.qr_code_scanner),
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
        _iconBox(Icons.shopping_cart_outlined),
      ],
    );
  }

  static Widget _iconBox(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Icon(icon),
    );
  }
}
