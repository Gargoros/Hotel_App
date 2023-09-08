import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_app/src/core/constants/app_icons_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.appBarTitle,
    required this.preferredSize,
    required this.firstSrceen,
  }) : super(key: key);

  final String appBarTitle;
  final bool firstSrceen;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: firstSrceen
          ? null
          : IconButton(
              icon: SvgPicture.asset(AppIconsConst.moveBack),
              onPressed: () => context.router.back(),
            ),
      title: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
