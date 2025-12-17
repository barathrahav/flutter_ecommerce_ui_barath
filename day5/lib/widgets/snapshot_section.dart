import 'package:flutter/material.dart';

class SnapshotSection extends StatelessWidget {
  const SnapshotSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('A Snapshot View',
            style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 12),
        _Item('4K Ultra HD XDR Display'),
        _Item('Wireless Charging System'),
        _Item('A18 Pro Chip'),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  final String text;
  const _Item(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.check_circle_outline, size: 18),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}