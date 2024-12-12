**Flutter Medical Store Admin Panel******
This project is a Flutter-based admin panel template for a medical store. It showcases a clean, modular structure with best practices and includes several screens populated with dummy data for demonstration purposes.

**Features**
**Dashboard**
Overview Cards: Show total products, total orders, low stock alerts, and total revenue.
Recent Orders Table: Displays recent orders with details like Order ID, Customer Name, Date, Total, and Status.
**Inventory Management**
Product Inventory Table: Lists product details, stock levels with warning indicators, and pricing information.
Inventory Filters: Provides advanced filtering options for the inventory.
**Orders Management**
Orders Overview: Displays status cards for orders (Completed, Processing, Pending).
Orders Table: Detailed table with export functionality and status badges.
**Customers Management**
Customer Statistics: Provides an overview of customer metrics.
Customers Table: Displays customer profiles, join dates, purchase histories, and total spent.
**Analytics**
Key Metrics Overview: Showcases sales performance and other analytics metrics.
Sales Chart: Placeholder for visualizing sales trends.
Category Distribution Visualization: Placeholder for showing product category distributions.
Date Range Selector: Enables time-range selection for analytics.
**Settings**
General Settings: Configure store info, currency, and basic settings.
Notification Preferences: Manage notification settings.
Account Settings: Handle account and security settings.
Sidebar Navigation
Navigation Options:
Dashboard
Inventory
Orders
Customers
Analytics
Settings
User Profile: Displays user profile information in the sidebar.
**Project Structure**
lib/
├── main.dart
├── theme/
│   └── app_theme.dart
├── models/
│   ├── product.dart
│   ├── order.dart
│   ├── customer.dart
│   └── analytics.dart
├── data/
│   └── dummy_data.dart
├── screens/
│   ├── dashboard_screen.dart
│   ├── inventory_screen.dart
│   ├── orders_screen.dart
│   ├── customers_screen.dart
│   ├── analytics_screen.dart
│   └── settings_screen.dart
├── widgets/
│   ├── sidebar.dart
│   ├── common/
│   │   └── page_header.dart
│   ├── dashboard/
│   │   ├── overview_cards.dart
│   │   ├── recent_orders.dart
│   │   └── product_inventory.dart
│   ├── inventory/
│   │   ├── inventory_filters.dart
│   │   └── inventory_table.dart
│   ├── orders/
│   │   ├── orders_overview.dart
│   │   └── orders_table.dart
│   ├── customers/
│   │   ├── customer_stats.dart
│   │   └── customers_table.dart
│   ├── analytics/
│   │   ├── analytics_metrics.dart
│   │   ├── sales_chart.dart
│   │   └── category_distribution.dart
│   └── settings/
│       ├── general_settings.dart
│       ├── notification_settings.dart
│       └── account_settings.dart

**Dummy Data**
The dummy_data.dart file includes:

**Products**
Categories: Pain Relief, Antibiotics, Supplements, Allergy, Digestive Health.
Prices range from $4.99 to $18.99.
Stock levels: Indicate low stock for certain items.
Manufacturers: Include PharmaCo, MediLabs, HealthPlus.
**Orders**
Order statuses: Completed, Processing, Pending.
Realistic order totals and dates.
Linked customer names.
**Customers**
Profiles with join dates, purchase histories, and contact details.
Tracking of total spent.

**How to Run**
Clone the repository:
git clone https://github.com/Muhammad-ali234/flutter-medical-admin-panel.git
Navigate to the project directory:
cd flutter-medical-admin-panel
Install dependencies:
flutter pub get
Run the project:
flutter run
