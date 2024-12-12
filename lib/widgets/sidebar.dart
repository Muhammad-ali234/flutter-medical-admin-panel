// import 'package:flutter/material.dart';
// import 'package:medical_store_admin/screens/analytics_screen.dart';
// import 'package:medical_store_admin/screens/customers_screen.dart';
// import 'package:medical_store_admin/screens/orders_screen.dart';
// import 'package:medical_store_admin/screens/settings_screen.dart';

// import '../screens/dashboard_screen.dart';
// import '../screens/inventory_screen.dart';

// class Sidebar extends StatelessWidget {
//   const Sidebar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 250,
//       color: Colors.white,
//       child: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(24.0),
//             child: Row(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.blue.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: const Icon(
//                     Icons.medical_services,
//                     color: Colors.blue,
//                     size: 24,
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 const Text(
//                   'Medical Store',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Divider(),
//           _buildMenuItem(
//             icon: Icons.dashboard,
//             title: 'Dashboard',
//             isSelected: true,
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const DashboardScreen()),
//               );
//             },
//           ),
//           _buildMenuItem(
//             icon: Icons.inventory,
//             title: 'Inventory',
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const InventoryScreen()),
//               );
//             },
//           ),
//           _buildMenuItem(
//               icon: Icons.shopping_cart,
//               title: 'Orders',
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const OrdersScreen()),
//                 );
//               }),
//           _buildMenuItem(
//             icon: Icons.people,
//             title: 'Customers',
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const CustomersScreen()),
//               );
//             },
//           ),
//           _buildMenuItem(
//               icon: Icons.analytics,
//               title: 'Analytics',
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const AnalyticsScreen()),
//                 );
//               }),
//           _buildMenuItem(
//               icon: Icons.settings,
//               title: 'Settings',
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const SettingsScreen()),
//                 );
//               }),
//           const Spacer(),
//           const Divider(),
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
//             ),
//             title: const Text('Admin User'),
//             subtitle: const Text('admin@example.com'),
//             onTap: () {},
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMenuItem({
//     required IconData icon,
//     required String title,
//     bool isSelected = false,
//     required VoidCallback onTap,
//   }) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         color: isSelected ? Colors.blue.withOpacity(0.1) : null,
//       ),
//       child: ListTile(
//         leading: Icon(
//           icon,
//           color: isSelected ? Colors.blue : Colors.grey[700],
//         ),
//         title: Text(
//           title,
//           style: TextStyle(
//             color: isSelected ? Colors.blue : Colors.grey[900],
//             fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//         selected: isSelected,
//         onTap: onTap,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:medical_store_admin/screens/analytics_screen.dart';
import 'package:medical_store_admin/screens/customers_screen.dart';
import 'package:medical_store_admin/screens/orders_screen.dart';
import 'package:medical_store_admin/screens/settings_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/inventory_screen.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int _selectedIndex = 0;
  void _onMenuItemTap(int index, Widget screen) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.medical_services,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Medical Store',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          _buildMenuItem(
            index: 0,
            icon: Icons.dashboard,
            title: 'Dashboard',
            screen: const DashboardScreen(),
          ),
          _buildMenuItem(
            index: 1,
            icon: Icons.inventory,
            title: 'Inventory',
            screen: const InventoryScreen(),
          ),
          _buildMenuItem(
            index: 2,
            icon: Icons.shopping_cart,
            title: 'Orders',
            screen: const OrdersScreen(),
          ),
          _buildMenuItem(
            index: 3,
            icon: Icons.people,
            title: 'Customers',
            screen: const CustomersScreen(),
          ),
          _buildMenuItem(
            index: 4,
            icon: Icons.analytics,
            title: 'Analytics',
            screen: const AnalyticsScreen(),
          ),
          _buildMenuItem(
            index: 5,
            icon: Icons.settings,
            title: 'Settings',
            screen: const SettingsScreen(),
          ),
          const Spacer(),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            title: const Text('Admin User'),
            subtitle: const Text('admin@example.com'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required int index,
    required IconData icon,
    required String title,
    required Widget screen,
  }) {
    final bool isSelected = _selectedIndex == index;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? Colors.blue.withOpacity(0.1) : null,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.grey[700],
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.grey[900],
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        selected: isSelected,
        onTap: () => _onMenuItemTap(index, screen),
      ),
    );
  }
}
