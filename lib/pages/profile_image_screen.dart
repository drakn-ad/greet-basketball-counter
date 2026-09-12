import 'package:flutter/material.dart';

class ProfileImageScreen extends StatelessWidget {
  const ProfileImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body:  Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(12),
              child: Text('Bottom',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Container(
              width: 230,
              height: 230,
              color: Colors.green,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(13),
              child: Text('Middle',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.black,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(13),
              child: Text('Top',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}