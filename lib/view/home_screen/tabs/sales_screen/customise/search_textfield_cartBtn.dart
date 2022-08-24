
import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/cert_screen/cert_screen.dart';
import 'package:lava_app/view/home_screen/customise/custom_search_field.dart';

import '../../../../themes_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomSearchField(width: 0.8,),

        InkWell(
          onTap: (){
            Navigator.pushNamed(context, CertSCreen.routeName);
          },
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
    );
  }
}
