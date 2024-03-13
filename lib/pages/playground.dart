import 'package:flutter/material.dart';
import './layout1.dart';

class Playground extends StatefulWidget{
  @override
  State<Playground> createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {

  late double _deviceHeight;
  late double _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 224, 232, 0.816),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: _deviceWidth*0.25,
            height: _deviceHeight,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                  Draggable(
                    data: "Hello",
                    feedback: Container(
                    height: _deviceHeight*0.06,
                    width: _deviceHeight*0.06,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child:const Center(
                      child: Icon(Icons.text_fields),
                    )
                  ),
                  child: Container(
                    height: _deviceHeight*0.06,
                    width: _deviceHeight*0.06,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child:const Center(
                      child: Icon(Icons.text_fields),
                    )
                  ),
                ),
                

              ],
            ),
            
          ),
          Container(
            height: _deviceHeight*0.9,
            width: _deviceWidth*0.26,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Layout1(),
          ),
          Container(
            width: _deviceWidth*0.25,
            height: _deviceHeight,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

