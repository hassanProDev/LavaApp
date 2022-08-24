import 'package:flutter/material.dart';

import '../../themes_colors.dart';

class CustomSearchField extends StatelessWidget {
  double? width;

  CustomSearchField({this.width=1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * width!,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: MyTheme.offWhiteBackground,
          isDense: true,
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          ),
        ),
      ),
    );
  }
}
