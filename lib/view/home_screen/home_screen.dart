import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: CurvedNavigationBar(items: []),
        body: Row(
          children: [],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Image.asset('assets/images/homeScreen/home.png'),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin:16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/homeScreen/lava.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/homeScreen/barcode.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green),
                      ),
                      Image.asset('assets/images/homeScreen/Bell.png'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/homeScreen/person.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
