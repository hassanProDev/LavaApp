import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = 'profileScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            child: Image.asset('assets/images/profile/background.png'),
          ),
          Scaffold(
            backgroundColor: Color(0xDE0D0D0D),
            body: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Image.asset('assets/images/profile/img.png'),
                        Text(
                          'Mayar Mohamed',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              color: Color(0xffF3FEF1),
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            leading: Icon(Icons.sports_basketball,color: Colors.green,),
                            title: Text('Change Name'),
                            trailing: Icon(Icons.arrow_forward_sharp),
                          ),
                        ),
                        Text('Edit Profile'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                          ),
                          child: ListTile(
                            leading: Icon(Icons.sports_basketball,color: Color(0xff1D592C),),
                            title: Text('Change Name'),
                            trailing: Icon(Icons.arrow_forward_sharp),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 16),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                          ),
                          child: ListTile(
                            leading: Icon(Icons.sports_basketball,color: Color(0xff1D592C),),
                            title: Text('Change Email'),
                            trailing: Icon(Icons.arrow_forward_sharp),
                          ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
