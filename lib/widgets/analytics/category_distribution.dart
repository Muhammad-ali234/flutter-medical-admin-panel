import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';

class CategoryDistribution extends StatelessWidget {
  const CategoryDistribution({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = _getCategoryDistribution();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sales by Category',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            ...categories.entries.map((entry) => _buildCategoryBar(
                  entry.key,
                  entry.value,
                  _getCategoryColor(entry.key),
                )),
          ],
        ),
      ),
    );
  }

  Map<String, int> _getCategoryDistribution() {
    final distribution = <String, int>{};
    for (final product in DummyData.products) {
      distribution[product.category] =
          (distribution[product.category] ?? 0) + 1;
    }
    return distribution;
  }

  Color _getCategoryColor(String category) {
    switch (category.toLowerCase()) {
      case 'pain relief':
        return Colors.blue;
      case 'antibiotics':
        return Colors.green;
      case 'supplements':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  Widget _buildCategoryBar(String category, int count, Color color) {
    final percentage = (count / DummyData.products.length) * 100;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                '${percentage.toStringAsFixed(1)}%',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: percentage / 100,
            backgroundColor: color.withOpacity(0.1),
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ],
      ),
    );
  }
}
