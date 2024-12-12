class Customer {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final DateTime joinDate;
  final int totalOrders;
  final double totalSpent;

  Customer({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.joinDate,
    required this.totalOrders,
    required this.totalSpent,
  });
}