import '../models/product.dart';
import '../models/order.dart';
import '../models/customer.dart';

class DummyData {
  static List<Product> products = [
    Product(
      id: 'P001',
      name: 'Paracetamol',
      price: 5.99,
      stock: 500,
      category: 'Pain Relief',
      manufacturer: 'PharmaCo',
    ),
    Product(
      id: 'P002',
      name: 'Amoxicillin',
      price: 12.99,
      stock: 200,
      category: 'Antibiotics',
      manufacturer: 'MediLabs',
    ),
    Product(
      id: 'P003',
      name: 'Vitamin C',
      price: 8.99,
      stock: 1000,
      category: 'Supplements',
      manufacturer: 'HealthPlus',
    ),
    Product(
      id: 'P004',
      name: 'Ibuprofen',
      price: 7.99,
      stock: 350,
      category: 'Pain Relief',
      manufacturer: 'PharmaCo',
    ),
    Product(
      id: 'P005',
      name: 'Aspirin',
      price: 4.99,
      stock: 250,
      category: 'Pain Relief',
      manufacturer: 'MediLabs',
    ),
    Product(
      id: 'P006',
      name: 'Vitamin D3',
      price: 11.99,
      stock: 800,
      category: 'Supplements',
      manufacturer: 'HealthPlus',
    ),
    Product(
      id: 'P007',
      name: 'Cetirizine',
      price: 6.99,
      stock: 450,
      category: 'Allergy',
      manufacturer: 'PharmaCo',
    ),
    Product(
      id: 'P008',
      name: 'Omeprazole',
      price: 15.99,
      stock: 300,
      category: 'Digestive Health',
      manufacturer: 'MediLabs',
    ),
    Product(
      id: 'P009',
      name: 'Zinc Supplements',
      price: 9.99,
      stock: 600,
      category: 'Supplements',
      manufacturer: 'HealthPlus',
    ),
    Product(
      id: 'P010',
      name: 'Ciprofloxacin',
      price: 18.99,
      stock: 150,
      category: 'Antibiotics',
      manufacturer: 'PharmaCo',
    ),
  ];

  static List<Order> orders = [
    Order(
      id: 'O001',
      customerName: 'John Doe',
      date: DateTime.now().subtract(const Duration(days: 1)),
      total: 45.99,
      status: 'Completed',
    ),
    Order(
      id: 'O002',
      customerName: 'Jane Smith',
      date: DateTime.now(),
      total: 32.50,
      status: 'Processing',
    ),
    Order(
      id: 'O003',
      customerName: 'Mike Johnson',
      date: DateTime.now(),
      total: 78.25,
      status: 'Pending',
    ),
    Order(
      id: 'O004',
      customerName: 'Sarah Wilson',
      date: DateTime.now().subtract(const Duration(days: 2)),
      total: 92.75,
      status: 'Completed',
    ),
    Order(
      id: 'O005',
      customerName: 'David Brown',
      date: DateTime.now().subtract(const Duration(days: 1)),
      total: 55.50,
      status: 'Processing',
    ),
    Order(
      id: 'O006',
      customerName: 'Emily Davis',
      date: DateTime.now().subtract(const Duration(days: 3)),
      total: 128.99,
      status: 'Completed',
    ),
    Order(
      id: 'O007',
      customerName: 'Michael Lee',
      date: DateTime.now().subtract(const Duration(days: 2)),
      total: 67.25,
      status: 'Processing',
    ),
    Order(
      id: 'O008',
      customerName: 'Lisa Anderson',
      date: DateTime.now().subtract(const Duration(days: 1)),
      total: 43.75,
      status: 'Pending',
    ),
    Order(
      id: 'O009',
      customerName: 'Robert Taylor',
      date: DateTime.now(),
      total: 89.99,
      status: 'Processing',
    ),
    Order(
      id: 'O010',
      customerName: 'Jennifer White',
      date: DateTime.now(),
      total: 156.50,
      status: 'Pending',
    ),
  ];

  static List<Customer> customers = [
    Customer(
      id: 'C001',
      name: 'John Doe',
      email: 'john.doe@example.com',
      phone: '+1 234-567-8901',
      address: '123 Main St, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 90)),
      totalOrders: 12,
      totalSpent: 458.75,
    ),
    Customer(
      id: 'C002',
      name: 'Jane Smith',
      email: 'jane.smith@example.com',
      phone: '+1 234-567-8902',
      address: '456 Oak Ave, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 60)),
      totalOrders: 8,
      totalSpent: 325.50,
    ),
    Customer(
      id: 'C003',
      name: 'Mike Johnson',
      email: 'mike.johnson@example.com',
      phone: '+1 234-567-8903',
      address: '789 Pine Rd, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 45)),
      totalOrders: 5,
      totalSpent: 235.25,
    ),
    Customer(
      id: 'C004',
      name: 'Sarah Wilson',
      email: 'sarah.wilson@example.com',
      phone: '+1 234-567-8904',
      address: '321 Elm St, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 30)),
      totalOrders: 3,
      totalSpent: 178.50,
    ),
    Customer(
      id: 'C005',
      name: 'David Brown',
      email: 'david.brown@example.com',
      phone: '+1 234-567-8905',
      address: '654 Maple Dr, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 15)),
      totalOrders: 2,
      totalSpent: 89.99,
    ),
    Customer(
      id: 'C006',
      name: 'Emily Davis',
      email: 'emily.davis@example.com',
      phone: '+1 234-567-8906',
      address: '987 Cedar Ln, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 120)),
      totalOrders: 15,
      totalSpent: 567.25,
    ),
    Customer(
      id: 'C007',
      name: 'Michael Lee',
      email: 'michael.lee@example.com',
      phone: '+1 234-567-8907',
      address: '741 Birch Rd, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 75)),
      totalOrders: 7,
      totalSpent: 289.75,
    ),
    Customer(
      id: 'C008',
      name: 'Lisa Anderson',
      email: 'lisa.anderson@example.com',
      phone: '+1 234-567-8908',
      address: '852 Willow Ave, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 40)),
      totalOrders: 4,
      totalSpent: 156.50,
    ),
    Customer(
      id: 'C009',
      name: 'Robert Taylor',
      email: 'robert.taylor@example.com',
      phone: '+1 234-567-8909',
      address: '963 Spruce St, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 25)),
      totalOrders: 3,
      totalSpent: 134.25,
    ),
    Customer(
      id: 'C010',
      name: 'Jennifer White',
      email: 'jennifer.white@example.com',
      phone: '+1 234-567-8910',
      address: '159 Ash Ln, City, Country',
      joinDate: DateTime.now().subtract(const Duration(days: 10)),
      totalOrders: 1,
      totalSpent: 45.99,
    ),
  ];
}
