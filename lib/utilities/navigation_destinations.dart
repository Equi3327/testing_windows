import 'package:flutter/material.dart';

enum AppNavigationDestination {
  dashboard,
  parameters,
  masters,
  transactions,
  reports,
  addOnMenus,
  window,
  quit,
}

extension DestinationNames on AppNavigationDestination {
  String title() {
    switch (this) {
      case AppNavigationDestination.dashboard:
        return "Dashboard";
      case AppNavigationDestination.parameters:
        return "Parameters";
      case AppNavigationDestination.masters:
        return "Masters";
      case AppNavigationDestination.transactions:
        return "Transactions";
      case AppNavigationDestination.reports:
        return "Reports";
      case AppNavigationDestination.addOnMenus:
        return "AddOn Menus";
      case AppNavigationDestination.window:
        return "Window";
      case AppNavigationDestination.quit:
        return "Quit";
    }
  }
}

extension DestinationIcons on AppNavigationDestination {
  IconData icon() {
    switch (this) {
      case AppNavigationDestination.dashboard:
        return  Icons.dashboard;
      case AppNavigationDestination.parameters:
        return  Icons.tune;
      case AppNavigationDestination.masters:
        return Icons.groups;
      case AppNavigationDestination.transactions:
        return Icons.swap_horiz;
      case AppNavigationDestination.reports:
        return Icons.bar_chart;
      case AppNavigationDestination.addOnMenus:
        return Icons.create_new_folder;
      case AppNavigationDestination.window:
        return Icons.view_compact;
      case AppNavigationDestination.quit:
        return Icons.cancel;
    }
  }
}