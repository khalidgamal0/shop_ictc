import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/utils/api_services.dart';
import '../models/home_model.dart';
import '../screens/home/home_screen.dart';
import 'layout_state.dart';


class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutState());
  static LayoutCubit get(context) {
    return BlocProvider.of(context);
  }
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    // const SearchScreen(),
    // const CartScreen(),
    // const ProfileScreen()
  ];

  changeBottomNavState(index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }


  HomeModel? homeModel ;
  Future<void>getHomeData()async{
    log('-------------------------------------');
    emit(GetHomeLoading());
    DioHelper.getData(endPoint: 'home').then((value){
      homeModel=HomeModel.fromJson(value);
      log(value.toString());
      emit(GetHomeSuccess());
      log('SUCCESS');
    }).catchError((error){
      log(error.toString());
      emit(GetHomeError());
      log('ERROR');

    });
  }

}
