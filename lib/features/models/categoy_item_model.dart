
import '../../core/utils/app_images.dart';

class Categories {
  final String catName, catimg;
  Categories(this.catName, this.catimg);
}

List<Categories> categorylist = [
  Categories('Phone', AppImage.phone),
  Categories('Watches', AppImage.watches),
  Categories('Laptop', AppImage.laptop),
  Categories('Tablet', AppImage.tablet),
  Categories('Air pods', AppImage.airpods),
  Categories('accessory', AppImage.accessory)
];
