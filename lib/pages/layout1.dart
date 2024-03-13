import 'package:flutter/material.dart';


class Layout1 extends StatefulWidget{
  @override
  State<Layout1> createState() => _Layout1State();
}

class _Layout1State extends State<Layout1> {
  late double _deviceHeight;
  late double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: _deviceHeight*0.9,
      width: _deviceWidth*0.26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: [
            Container(
              height: _deviceHeight*0.15,
              width: _deviceWidth*0.2585,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(),
            ),
            
           ],
           
          ),
          SizedBox(height: _deviceHeight*0.05,),
          Row(
            children: <Widget>[
               Container(
              height: _deviceHeight*0.496,
              width: _deviceWidth*0.2585,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(),
            ),
            ],
          ),
          SizedBox(height: _deviceHeight*0.05,),
          Row(
            children: <Widget>[
              Container(
              height: _deviceHeight*0.15,
              width: _deviceWidth*0.2585,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(),
            ),
            ],
          )
        ],
      ),
    );
  }
}