import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/analytics/sales_chart.dart';
import '../widgets/analytics/analytics_metrics.dart';
import '../widgets/analytics/category_distribution.dart';
import '../widgets/common/page_header.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

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
                    title: 'Analytics Dashboard',
                    actions: [
                      DateRangeSelector(),
                    ],
                  ),
                  SizedBox(height: 24),
                  AnalyticsMetrics(),
                  SizedBox(height: 24),
                  SalesChart(),
                  SizedBox(height: 24),
                  CategoryDistribution(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DateRangeSelector extends StatelessWidget {
  const DateRangeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: 'last_30_days',
      items: const [
        DropdownMenuItem(value: 'today', child: Text('Today')),
        DropdownMenuItem(value: 'last_7_days', child: Text('Last 7 Days')),
        DropdownMenuItem(value: 'last_30_days', child: Text('Last 30 Days')),
        DropdownMenuItem(value: 'this_month', child: Text('This Month')),
        DropdownMenuItem(value: 'this_year', child: Text('This Year')),
      ],
      onChanged: (value) {},
    );
  }
}