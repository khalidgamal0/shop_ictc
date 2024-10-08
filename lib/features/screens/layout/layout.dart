import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/app_images.dart';
import '../../cubit/layout_cubit.dart';
import '../../cubit/layout_state.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit()..getHomeData(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  cubit.changeBottomNavState(index);
                },
                currentIndex: cubit.currentIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppImage.homeIcon),
                      label:
                          ''
                              ''),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppImage.searchIcon), label: ''),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppImage.cartIcon), label: ''),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(AppImage.profileIcon), label: ''),
                ]),
          );
        },
      ),
    );
  }
}
