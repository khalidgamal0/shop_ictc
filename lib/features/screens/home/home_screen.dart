import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_ictc/features/cubit/layout_cubit.dart';
import 'package:shop_ictc/features/cubit/layout_state.dart';
import 'package:shop_ictc/features/screens/home/widgets/brand_item.dart';
import 'package:shop_ictc/features/screens/home/widgets/category_item.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/search_field.dart';
import '../../models/brand_item_model.dart';
import '../../models/categoy_item_model.dart';
import 'widgets/custom_smooth_page_indcator.dart';
import 'widgets/home_grid_view_item.dart';
import 'widgets/home_tap_app_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
  builder: (context, state) {
    var cubit=LayoutCubit.get(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTapAppBar(),
            CarouselSlider(
              items: List.generate(
                cubit.homeModel?.data?.banners?.length??0,
                    (index) =>Image.network(cubit.homeModel?.data?.banners?[index].image??''),
              ),
              options: CarouselOptions(
                height: 150,
                initialPage: 0,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 1),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Center(child: CustomSmoothPageIndicator(controller: controller)),
            const SizedBox(
              height: 11,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SearchTextField(hintText: 'search'),
            ),
            const SizedBox(
              height: 29,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CategoryItem(
                    category: categorylist[index],
                  ),
                  itemCount: categorylist.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 24,
                  ),
                ),
              ),
            ),
            Center(
              child: CustomSmoothPageIndicator(
                controller: controller,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      BrandItem(branditem: brandlist[index]),
                  itemCount: brandlist.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 24,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'best seller',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            GridView.count(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 160 / 250,
                crossAxisSpacing: 13,
                mainAxisSpacing: 16,
                children: [
                  ...List.generate(
                    cubit.homeModel?.data?.products?.length??0,
                        (index) =>  HomeGridViewItem(product:cubit.homeModel?.data?.products?[index],),
                  ),
                ])
          ],
        ),
      ),
    );
  },
);
  }
}
