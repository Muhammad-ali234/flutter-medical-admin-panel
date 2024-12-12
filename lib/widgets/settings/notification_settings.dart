import 'package:flutter/material.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            _buildNotificationToggle(
              'Low Stock Alerts',
              'Get notified when product stock is low',
              true,
            ),
            const Divider(),
            _buildNotificationToggle(
              'New Order Notifications',
              'Receive alerts for new orders',
              true,
            ),
            const Divider(),
            _buildNotificationToggle(
              'Order Status Updates',
              'Get notified when order status changes',
              false,
            ),
            const Divider(),
            _buildNotificationToggle(
              'Customer Reviews',
              'Receive notifications for new reviews',
              true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationToggle(String title, String subtitle, bool value) {
    return SwitchListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
      value: value,
      onChanged: (newValue) {},
    );
  }
}
