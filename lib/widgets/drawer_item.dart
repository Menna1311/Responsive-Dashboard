import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active&inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300), // Animation duration
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: isActive
          ? ActiveDrawerItem(
              key: const ValueKey(
                  1), // Ensure different keys for active/inactive items
              drawerItemModel: drawerItemModel,
            )
          : InActiveDrawerItem(
              key: const ValueKey(
                  2), // Ensure different keys for active/inactive items
              drawerItemModel: drawerItemModel,
            ),
    );
  }
}
