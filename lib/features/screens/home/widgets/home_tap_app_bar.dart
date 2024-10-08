import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';

class HomeTapAppBar extends StatelessWidget {
  const HomeTapAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color: AppColor.appbarcolor,
      child: Row(
        children: [
          const SizedBox(
            width: 25,
          ),
          SvgPicture.asset(AppImage.drawerIcon),
          const SizedBox(
            width: 96,
          ),
          SvgPicture.asset(AppImage.shopWindow),
          const SizedBox(
            width: 18,
          ),
          const Text(
            'Home',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: AppColor.textColor1),
          )

        ],
      ),
    );
  }
}
