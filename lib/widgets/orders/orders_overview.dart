import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';

class OrdersOverview extends StatelessWidget {
  const OrdersOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final totalOrders = DummyData.orders.length;
    final completedOrders =
        DummyData.orders.where((o) => o.status == 'Completed').length;
    final pendingOrders =
        DummyData.orders.where((o) => o.status == 'Pending').length;
    final processingOrders =
        DummyData.orders.where((o) => o.status == 'Processing').length;

    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 16.0,
      childAspectRatio: 1.5,
      children: [
        _buildOverviewCard(
          'Total Orders',
          totalOrders.toString(),
          Icons.shopping_cart,
          Colors.blue,
        ),
        _buildOverviewCard(
          'Completed',
          completedOrders.toString(),
          Icons.check_circle,
          Colors.green,
        ),
        _buildOverviewCard(
          'Pending',
          pendingOrders.toString(),
          Icons.pending,
          Colors.orange,
        ),
        _buildOverviewCard(
          'Processing',
          processingOrders.toString(),
          Icons.refresh,
          Colors.purple,
        ),
      ],
    );
  }

  Widget _buildOverviewCard(
      String title, String value, IconData icon, Color color) {
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
