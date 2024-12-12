import 'package:flutter/material.dart';
import '../../data/dummy_data.dart';

class ProductInventory extends StatelessWidget {
  const ProductInventory({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Product Inventory',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            DataTable(
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Category')),
                DataColumn(label: Text('Price')),
                DataColumn(label: Text('Stock')),
                DataColumn(label: Text('Manufacturer')),
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
                ]);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}