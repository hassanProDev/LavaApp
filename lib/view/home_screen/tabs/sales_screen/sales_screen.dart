import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lava_app/view/home_screen/tabs/sales_screen/customise/custom_item.dart';
import 'package:lava_app/view/themes_colors.dart';

import '../../questions_screen/questions_screen.dart';
import 'customise/custom_filter_btn.dart';
import 'customise/search_textfield_cartBtn.dart';

class SalesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05),
              child: Image.asset(
                'assets/images/register/lavaLogo.png',
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ),
            SearchTextField(),
            CustomFilterBtns(),
            Expanded(
              child: MasonryGridView.count(
                itemCount: 4,
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                itemBuilder: (context, index) => CustomItem(
                  imgName: '${index + 1}',
                ),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, QuestionScreen.routeName);
          },
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: Icon(Icons.question_mark_sharp,color: Colors.white,),
            decoration: BoxDecoration(
              color: MyTheme.primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        )
      ],
    );
  }
}
