# Flutter Medical Store Admin Panel

This project is a Flutter-based admin panel template for a medical store. It demonstrates a clean, modular structure using best practices and includes several screens with dummy data for template purposes.

## Features

### Dashboard
- **Overview Cards**: Displays total products, total orders, low stock alerts, and total revenue.
- **Recent Orders Table**: Displays recent orders with details such as Order ID, Customer Name, Date, Total, and Status.

### Inventory Management
- **Product Inventory Table**: Shows product details, stock levels with warning indicators, and pricing information.
- **Inventory Filters**: Advanced filtering options for the inventory.

### Orders Management
- **Orders Overview**: Status cards showing the number of orders in various states (Completed, Processing, Pending).
- **Orders Table**: Detailed table with export functionality and status badges.

### Customers Management
- **Customer Statistics**: Overview of customer metrics.
- **Customers Table**: Displays customer profiles, join dates, purchasing history, and total spent.

### Analytics
- **Key Metrics Overview**: Displays sales performance and other analytics metrics.
- **Sales Chart**: Placeholder for visualizing sales trends.
- **Category Distribution Visualization**: Placeholder for displaying product category distributions.
- **Date Range Selector**: Allows selection of time ranges for analytics.

### Settings
- **General Settings**: Store info, currency, and basic configurations.
- **Notification Preferences**: Configurable notification settings.
- **Account Settings**: Security and account management.

### Sidebar Navigation
- **Navigation Options**:
  - Dashboard
  - Inventory
  - Orders
  - Customers
  - Analytics
  - Settings
- **User Profile**: Displays user profile information in the sidebar.

## Project Structure

```plaintext
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
```

## Dummy Data
The `dummy_data.dart` file includes:

### Products
- A variety of categories like Pain Relief, Antibiotics, Supplements, etc.
- Prices ranging from $4.99 to $18.99.
- Stock levels indicating low stock for some items.
- Multiple manufacturers (PharmaCo, MediLabs, HealthPlus).

### Orders
- Various statuses: Completed, Processing, Pending.
- Realistic order totals and dates.
- Linked customer names.

### Customers
- Complete profiles with join dates, purchase histories, and contact details.
- Realistic total spent tracking.

## How to Run

1. Clone the repository.
2. Run `flutter pub get` to fetch dependencies.
3. Start the project with `flutter run`.

## Preview
To preview the project, set up a local Flutter environment or use tools like **StackBlitz** for `ns preview`.

## Future Enhancements
- Connect to a real backend API.
- Add CRUD operations for products, orders, and customers.
- Enhance analytics with real charts using libraries like `charts_flutter`.
- Implement authentication and user roles.

## License
This project is open-source and available under the MIT License.