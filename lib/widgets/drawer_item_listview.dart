import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListview extends StatefulWidget {
  DrawerItemListview({super.key});

  @override
  State<DrawerItemListview> createState() => _DrawerItemListviewState();
}

int activeIndex = 0;

class _DrawerItemListviewState extends State<DrawerItemListview> {
  final List<DrawerItemModel> drawerItemModel = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransctions,
      title: 'My Transactions',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerItemModel.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                    print('active index $activeIndex');
                  });
                }
              },
              child: DrawerItem(
                drawerItemModel: drawerItemModel[index],
                isActive: activeIndex == index,
              ));
        });
  }
}
