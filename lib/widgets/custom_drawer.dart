import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active&inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_listview.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UserInfo()),
          DrawerItemListview(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesSettings, title: 'settings')),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          image: Assets.imagesLogout, title: 'logout')),
                  SizedBox(height: 20),
                ],
              ))
        ],
      ),
    );
  }
}
