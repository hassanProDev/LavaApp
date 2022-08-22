
import 'package:flutter/material.dart';

import '../../../../themes_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.80,
            child: TextField(

              decoration: InputDecoration(
                filled: true,
                fillColor: MyTheme.offWhiteBackground,
                isDense: true,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          InkWell(
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyTheme.primaryColor
              ),
              child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
