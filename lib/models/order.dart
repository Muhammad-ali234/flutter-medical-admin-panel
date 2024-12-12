class Order {
  final String id;
  final String customerName;
  final DateTime date;
  final double total;
  final String status;

  Order({
    required this.id,
    required this.customerName,
    required this.date,
    required this.total,
    required this.status,
  });
}