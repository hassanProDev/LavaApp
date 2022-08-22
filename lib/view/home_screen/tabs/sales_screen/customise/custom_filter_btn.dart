import 'package:flutter/material.dart';

class CustomFilterBtns extends StatelessWidget {
  List<String> filterBy = ['All', 'Plant', 'seeds', 'tools', 'trees'];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.05,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterBy.length,
        itemBuilder: (context, index) => InkWell(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              filterBy[index],
              style: TextStyle(fontSize: 16),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfff8f8f8),
            ),
          ),
        ),
      ),
    );
  }
}
