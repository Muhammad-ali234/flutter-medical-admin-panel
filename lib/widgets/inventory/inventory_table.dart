import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';

class InventoryTable extends StatelessWidget {
  const InventoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Product Inventory',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  label: const Text('Export'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Category')),
                  DataColumn(label: Text('Price')),
                  DataColumn(label: Text('Stock')),
                  DataColumn(label: Text('Manufacturer')),
                  DataColumn(label: Text('Actions')),
                ],
                rows: DummyData.products.map((product) {
                  return DataRow(cells: [
                    DataCell(Text(product.id)),
                    DataCell(Text(product.name)),
                    DataCell(Text(product.category)),
                    DataCell(Text('\$${product.price.toStringAsFixed(2)}')),
                    DataCell(
                      Text(
                        product.stock.toString(),
                        style: TextStyle(
                          color: product.stock < 300 ? Colors.red : Colors.black,
                          fontWeight: product.stock < 300 ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                    DataCell(Text(product.manufacturer)),
                    DataCell(
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, size: 20),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, size: 20),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ]);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}