import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/dashboard/overview_cards.dart';
import '../widgets/dashboard/recent_orders.dart';
import '../widgets/dashboard/product_inventory.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Sidebar(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  OverviewCards(),
                  SizedBox(height: 24),
                  RecentOrders(),
                  SizedBox(height: 24),
                  ProductInventory(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
