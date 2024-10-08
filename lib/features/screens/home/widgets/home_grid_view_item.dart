import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import '../../../models/home_model.dart';

class HomeGridViewItem extends StatelessWidget {
  const HomeGridViewItem({
    super.key, required this.product,
  });
final Product? product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff2A132E).withOpacity(.1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            '${product?.discount??''}',
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.red),
          ),
          Center(
            child: SizedBox(
                height: 90,
                child: Image.network(product?.image??'')),
          ),
          const SizedBox(
            height: 8,
          ),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text:'${product?.oldPrice??''}',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff2A132E).withOpacity(.5))),
                 TextSpan(
                    text:'  ${product?.price??''}',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2A132E))),
              ])),
          Text(
            '${product?.name??''}',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xff2A132E).withOpacity(.5)),
          )
        ],
      ),
    );
  }
}
