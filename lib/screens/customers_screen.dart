import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/customers/customers_table.dart';
import '../widgets/customers/customer_stats.dart';
import '../widgets/common/page_header.dart';

class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

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
                    title: 'Customer Management',
                    actions: [
                      AddCustomerButton(),
                    ],
                  ),
                  SizedBox(height: 24),
                  CustomerStats(),
                  SizedBox(height: 24),
                  CustomersTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddCustomerButton extends StatelessWidget {
  const AddCustomerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // TODO: Implement add customer functionality
      },
      icon: const Icon(Icons.person_add),
      label: const Text('Add Customer'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
