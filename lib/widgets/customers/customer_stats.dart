import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';

class CustomerStats extends StatelessWidget {
  const CustomerStats({super.key});

  @override
  Widget build(BuildContext context) {
    final totalCustomers = DummyData.customers.length;
    final totalSpent = DummyData.customers.fold(0.0, (sum, customer) => sum + customer.totalSpent);
    final averageOrderValue = totalSpent / DummyData.orders.length;

    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      crossAxisSpacing: 16.0,
      childAspectRatio: 2,
      children: [
        _buildStatCard(
          'Total Customers',
          totalCustomers.toString(),
          Icons.people,
          Colors.blue,
        ),
        _buildStatCard(
          'Total Revenue',
          '\$${totalSpent.toStringAsFixed(2)}',
          Icons.attach_money,
          Colors.green,
        ),
        _buildStatCard(
          'Average Order Value',
          '\$${averageOrderValue.toStringAsFixed(2)}',
          Icons.shopping_cart,
          Colors.purple,
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, size: 32, color: color),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          ],
        ),
      ),
    );
  }
}