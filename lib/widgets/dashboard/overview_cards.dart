import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';

class OverviewCards extends StatelessWidget {
  const OverviewCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 16.0,
      children: [
        _buildCard(
          'Total Products',
          DummyData.products.length.toString(),
          Icons.inventory,
          Colors.blue,
        ),
        _buildCard(
          'Total Orders',
          DummyData.orders.length.toString(),
          Icons.shopping_cart,
          Colors.green,
        ),
        _buildCard(
          'Low Stock Items',
          DummyData.products.where((p) => p.stock < 300).length.toString(),
          Icons.warning,
          Colors.orange,
        ),
        _buildCard(
          'Total Revenue',
          '\$${DummyData.orders.fold(0.0, (sum, order) => sum + order.total).toStringAsFixed(2)}',
          Icons.attach_money,
          Colors.purple,
        ),
      ],
    );
  }

  Widget _buildCard(String title, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: color),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}