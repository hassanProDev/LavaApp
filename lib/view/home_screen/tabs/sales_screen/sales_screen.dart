import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lava_app/view/home_screen/tabs/sales_screen/customise/custom_item.dart';

import 'customise/custom_filter_btn.dart';
import 'customise/search_textfield_cartBtn.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
