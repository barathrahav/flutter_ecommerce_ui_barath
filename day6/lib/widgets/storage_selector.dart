import 'package:flutter/material.dart';

class StorageSelector extends StatelessWidget {
  const StorageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Storage',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),

        Row(
          children: const [
            Expanded(
              child: StorageOption(
                label: '256 GB',
                isSelected: false,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: StorageOption(
                label: '512 GB',
                isSelected: true,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: StorageOption(
                label: '1 TB',
                isSelected: false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class StorageOption extends StatelessWidget {
  final String label;
  final bool isSelected;

  const StorageOption({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xFFEAF1FF)
            : Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isSelected
              ? const Color(0xFF2F6BFF)
              : Colors.grey.shade300,
          width: 1.2,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: isSelected
              ? const Color(0xFF2F6BFF)
              : Colors.black,
        ),
      ),
    );
  }
}
