import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DemoPage(),
//     );
//   }
// }

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 600,
        width: 400,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.pink,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey,
              ),
            ),
            Container(
              height: 148,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
