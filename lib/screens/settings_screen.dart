import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import '../widgets/settings/general_settings.dart';
import '../widgets/settings/notification_settings.dart';
import '../widgets/settings/account_settings.dart';
import '../widgets/common/page_header.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Sidebar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  PageHeader(title: 'Settings'),
                  SizedBox(height: 24),
                  GeneralSettings(),
                  SizedBox(height: 24),
                  NotificationSettings(),
                  SizedBox(height: 24),
                  AccountSettings(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
