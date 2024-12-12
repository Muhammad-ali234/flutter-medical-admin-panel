import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';

class AnalyticsMetrics extends StatelessWidget {
  const AnalyticsMetrics({super.key});

  @override
  Widget build(BuildContext context) {
    final totalRevenue =
        DummyData.orders.fold(0.0, (sum, order) => sum + order.total);
    final averageOrderValue = totalRevenue / DummyData.orders.length;
    final totalCustomers = DummyData.customers.length;

    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 16.0,
      childAspectRatio: 1.5,
      children: [
        _buildMetricCard(
          'Total Revenue',
          '\$${totalRevenue.toStringAsFixed(2)}',
          Icons.attach_money,
          Colors.green,
          '+12.5%',
        ),
        _buildMetricCard(
          'Total Orders',
          DummyData.orders.length.toString(),
          Icons.shopping_cart,
          Colors.blue,
          '+8.2%',
        ),
        _buildMetricCard(
          'Average Order',
          '\$${averageOrderValue.toStringAsFixed(2)}',
          Icons.analytics,
          Colors.purple,
          '+5.7%',
        ),
        _buildMetricCard(
          'Total Customers',
          totalCustomers.toString(),
          Icons.people,
          Colors.orange,
          '+15.3%',
        ),
      ],
    );
  }

  Widget _buildMetricCard(
    String title,
    String value,
    IconData icon,
    Color color,
    String growth,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: color, size: 24),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    growth,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
