import 'package:flutter/material.dart';

class CustomHyperText extends StatelessWidget {
  const CustomHyperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width*0.25,
          color: Colors.black,
        ),
        Text('or continue with'),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width*0.25,

          color: Colors.black,
        ),
      ],
    );
  }
}
