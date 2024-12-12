import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/orders/orders_overview.dart';
import '../widgets/orders/orders_table.dart';
import '../widgets/common/page_header.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

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
                  PageHeader(
                    title: 'Orders Management',
                    actions: [],
                  ),
                  SizedBox(height: 24),
                  OrdersOverview(),
                  SizedBox(height: 24),
                  OrdersTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
