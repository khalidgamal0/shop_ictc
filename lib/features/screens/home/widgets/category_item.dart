import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../models/categoy_item_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });
  final Categories category;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 80,
              height: 88,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColor.appbarcolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  category.catName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Color(0xff2A132E)),
                ),
              ),
            ),
          ],
        ),
        Image.asset(category.catimg),
      ],
    );
  }
}
