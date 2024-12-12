class AnalyticsSummary {
  final int totalSales;
  final double revenue;
  final int newCustomers;
  final double averageOrderValue;
  final Map<String, double> salesByCategory;
  final Map<String, int> ordersByStatus;
  final List<DailySales> dailySales;

  AnalyticsSummary({
    required this.totalSales,
    required this.revenue,
    required this.newCustomers,
    required this.averageOrderValue,
    required this.salesByCategory,
    required this.ordersByStatus,
    required this.dailySales,
  });
}

class DailySales {
  final DateTime date;
  final double sales;
  final int orders;

  DailySales({
    required this.date,
    required this.sales,
    required this.orders,
  });
}
