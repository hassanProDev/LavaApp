import 'package:flutter/material.dart';
import 'package:lava_app/view/home_screen/cert_screen/custom_btn.dart';

class CertSCreen extends StatelessWidget {
  int counter = 0;
  static const String routeName = 'certScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            'My Cert',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Card(
                elevation: 5,shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    leading: Image.asset('assets/images/cert/flower.png'),
                    title: Text('Cactus plant'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('200 EGP'),
                        Row(
                          children: [
                            CustomBtnCert(
                              text: '+',
                              func: () {
                                counter++;
                              },
                            ),
                            Text('$counter'),
                            CustomBtnCert(
                              text: '-',
                              func: () {
                                counter--;
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: Icon(Icons.delete),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
