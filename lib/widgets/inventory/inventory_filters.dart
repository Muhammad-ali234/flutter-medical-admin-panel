import 'package:flutter/material.dart';

class InventoryFilters extends StatelessWidget {
  const InventoryFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Filters',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search products...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                DropdownButton<String>(
                  hint: const Text('Category'),
                  items: const [
                    DropdownMenuItem(value: 'all', child: Text('All Categories')),
                    DropdownMenuItem(value: 'pain_relief', child: Text('Pain Relief')),
                    DropdownMenuItem(value: 'antibiotics', child: Text('Antibiotics')),
                    DropdownMenuItem(value: 'supplements', child: Text('Supplements')),
                  ],
                  onChanged: (value) {},
                ),
                const SizedBox(width: 16),
                DropdownButton<String>(
                  hint: const Text('Stock Status'),
                  items: const [
                    DropdownMenuItem(value: 'all', child: Text('All Stock')),
                    DropdownMenuItem(value: 'low', child: Text('Low Stock')),
                    DropdownMenuItem(value: 'out', child: Text('Out of Stock')),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}