import 'package:flutter/material.dart';
import './demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drag and Drop Example',
      home: DragAndDropExample(),
    );
  }
}

class DragAndDropExample extends StatefulWidget {
  const DragAndDropExample({Key? key}) : super(key: key);

  @override
  _DragAndDropExampleState createState() => _DragAndDropExampleState();
}

class _DragAndDropExampleState extends State<DragAndDropExample> {
  bool showDemoPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag and Drop Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Draggable<String>(
              data: 'Page1',
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text('Drag Me')),
              ),
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withOpacity(0.5),
                child: const Center(child: Text('Dragging')),
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withOpacity(0.2),
                child: const Center(child: Text('Child When Dragging')),
              ),
            ),
            SizedBox(height: 50),
            DragTarget<String>(
              builder: (BuildContext context, List<String?> candidateData, List<dynamic> rejectedData) {
                return showDemoPage
                    ? DemoPage()
                    : Container(
                        width: 400,
                        height: 600,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            'Drop Here',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
              },
              onAcceptWithDetails: (DragTargetDetails<String> details) {
                setState(() {
                  showDemoPage = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}


