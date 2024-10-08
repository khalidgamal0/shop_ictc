import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.hintText,
  });
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Color(AppColor.textColor).withOpacity(.05),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(AppColor.textColor).withOpacity(.05),
            ),
            borderRadius: BorderRadius.circular(40)),
        hintStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12.64,
            fontWeight: FontWeight.w600,
            color: const Color(0xff2a132e80).withOpacity(.5)),
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }
}
