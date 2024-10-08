import 'package:flutter/material.dart';

import '../../../models/brand_item_model.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({
    super.key,
    required this.branditem,
  });
  final Brands branditem;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(branditem.brandname),
      ),
    );
  }
}
