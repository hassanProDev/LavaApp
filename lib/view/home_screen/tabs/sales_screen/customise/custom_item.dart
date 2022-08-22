import 'package:flutter/material.dart';
import 'package:lava_app/view/component/custom_button.dart';
import 'package:lava_app/view/themes_colors.dart';

class CustomItem extends StatefulWidget {
  String? imgName;

  CustomItem({Key? key, this.imgName}) : super(key: key);

  @override
  State<CustomItem> createState() => _CustomItemState();
}

class _CustomItemState extends State<CustomItem> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: height * 0.40,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    ),
              ),
              Expanded(
                flex: 4,
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            child:               Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (counter > 0) {
                                        counter--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    color: MyTheme.offWhiteBackground,
                                    padding: EdgeInsets.all(8),
                                    child: Text('-'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text('$counter'),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      counter++;
                                    });
                                  },
                                  child: Container(
                                    color: MyTheme.offWhiteBackground,
                                    padding: EdgeInsets.all(8),
                                    child: Text('+'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('GARDENIA PLANT'),
                                Text('70 EGP'),
                                CustomButton(
                                  text: 'Add to cert',
                                  color: MyTheme.primaryColor,
                                  textColor: Colors.white,
                                  onTab: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          child: Image.asset(
              'assets/images/sales_screen/img${widget.imgName}.png',),
        ),
      ],
    );
  }
}
