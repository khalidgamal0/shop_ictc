import '../../core/utils/app_images.dart';

class Brands {
  final String brandname;

  Brands({required this.brandname});
}

List<Brands> brandlist = [
  Brands(brandname: AppImage.dell),
  Brands(brandname: AppImage.hp),
  Brands(brandname: AppImage.apple),
  Brands(brandname: AppImage.samsung),
  Brands(brandname: AppImage.huawei),
  Brands(brandname: AppImage.lenovo),
];
