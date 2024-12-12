import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/inventory/inventory_filters.dart';
import '../widgets/inventory/inventory_table.dart';
import '../widgets/common/page_header.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

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
                    title: 'Inventory Management',
                    actions: [
                      AddProductButton(),
                    ],
                  ),
                  SizedBox(height: 24),
                  InventoryFilters(),
                  SizedBox(height: 24),
                  InventoryTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddProductButton extends StatelessWidget {
  const AddProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // TODO: Implement add product functionality
      },
      icon: const Icon(Icons.add),
      label: const Text('Add Product'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
