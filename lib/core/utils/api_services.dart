import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio? dio=Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
      receiveDataWhenStatusError: true,
      headers: {
        'lang': 'en',
        'Content-Type': 'application/json',
        'Authorization': 'b676yF4HQTAGtP9bYNM2kjAw3VZ6vd63Ar7dr7jQvhISokVKIK5K3Emr4tiPctOBgBlZhV',
      }
    )
  );


  static Future<Map<String,dynamic>> postData(
      {
        required String endPoint,
        Map<String, dynamic>? query,
         Map<String, dynamic> ?data,
      }) async {

    var response =await  dio!.post(
      endPoint,
      queryParameters: query,
      data: data,

    );
    return response.data;
  }

  static Future<Map<String,dynamic>> getData({
    required String endPoint,
    Map<String, dynamic>? query,
     Map<String, dynamic>? data,


  }) async {

    var response= await dio!.get(endPoint, queryParameters: query,data: data);
    return response.data;
  }


}

