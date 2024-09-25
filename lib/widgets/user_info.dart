import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesAvatar1),
        title: Text('Lacon Ewomowe', style: AppStyles.styleSemiBold20),
        subtitle: Text('Laconsffe@gmail.com', style: AppStyles.styleRegular12),
      ),
    );
  }
}
