import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import './playground.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight;
  late double _deviceWidth;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 224, 232, 0.816),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _HomeNavBar(),
            Expanded(
              child: _buildContext(_selectedIndex),
            )
          ],
        ),
      ),
    );
  }

  Widget _HomeNavBar() {
    return Container(
      width: _deviceWidth * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: [
                    Icon(
                      Icons.flutter_dash,
                      color: Color.fromARGB(255, 57, 8, 65),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Workspace",
                        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.ring_volume),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildListItem(0, "Projects", Icons.grid_4x4_rounded),
                  _buildListItem(1, "My Organization", Icons.people),
                  _buildListItem(2, "Marketplace", Icons.house),
                  _buildListItem(3, "Resources", Icons.question_mark_rounded),
                  _buildListItem(4, "Community", Icons.message),
                  _buildListItem(5, "Resources", Icons.question_mark_rounded),
                  _buildListItem(6, "Resources", Icons.question_mark_rounded),
                  _buildListItem(7, "Resources", Icons.question_mark_rounded),
                  _buildListItem(8, "Resources", Icons.question_mark_rounded),
                  
                ],
              ),
            ),
            Container(
              height: _deviceHeight*0.1,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 229, 227, 227), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: _deviceHeight*0.07,
                      width: _deviceHeight*0.07,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 70, 13, 80),
                        borderRadius: BorderRadius.circular(35)
                      ),
                      child: const Center(child: Text("JD",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text("John Doe", 
                          style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text("john.doe@gmail.com", 
                          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: _deviceHeight*0.1,
                decoration: BoxDecoration(
                  border: Border.all(color:const Color.fromARGB(255, 229, 227, 227), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _buildListItem(int index, String title, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; 
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 14, bottom: 14),
        child: Container(
          height: _deviceHeight * 0.06,
          decoration: BoxDecoration(
            color: _selectedIndex == index ? const Color.fromARGB(255, 57, 8, 65): Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  icon,
                  color: _selectedIndex == index? Colors.white: const Color.fromARGB(255, 99, 97, 97),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    title, 
                    style:  TextStyle(color: _selectedIndex == index? Colors.white: const Color.fromARGB(255, 99, 97, 97), fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildContext(int index){
    switch(index){
      case 0:
      return _ProjectPage();

      case 1:
      return const Center(child: Text("Welcome to My Organization Page!"));

      case 2:
      return const Center(child: Text("Welcome to the Marketplace Page!"));

      case 3:
      return const Center(child: Text("Welcome to the Resources Page!"),);

      case 4:
      return const Center(child: Text("Welcome to the Community Page!"),);

      case 5:
      return const Center(child: Text("Welcome to the Resources Page!"),);

      case 6:
      return const Center(child: Text("Welcome to the Resources Page!"),);

      default:
      return Container();
    }
  }



  Widget _ProjectPage(){
    return   Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: _deviceHeight*0.065,
                width: _deviceWidth*0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 209, 205, 205), width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const TextField(
                 decoration: InputDecoration(
                   hintText: "Search your project...",
                   prefixIcon: Icon(Icons.search),
                   contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                   
                 ),
                                    )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Expanded(
              child: Container(
                height: _deviceHeight*0.877,
                width: _deviceWidth*0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 209, 206, 206),width: 2),
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                         const SizedBox(width: 20.0, height: 100.0),
                             const Text(
                                    'Ready To Make',
                                    style: TextStyle(fontSize: 43.0, fontWeight: FontWeight.bold,
                                color:  Color.fromARGB(255, 84, 15, 96),),
                                  ),
                             const SizedBox(width: 20.0, height: 100.0),
                              DefaultTextStyle(
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 239, 63, 122),
                                    fontStyle: FontStyle.italic,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                   fontFamily: 'Horizon',
                                   ),
                                  child: AnimatedTextKit(
                                        animatedTexts: [
                                         FadeAnimatedText('An Awesome Website!'),
                                         FadeAnimatedText('A Different Website!'),
                                         FadeAnimatedText('An Optimistic Website!'),
                                      ],
                                     repeatForever: true,
                                  ),
                                ),
                                // const Text(" Website!",
                                // style: TextStyle(fontSize: 43,
                                // fontWeight: FontWeight.bold,
                                // color:  Color.fromARGB(255, 84, 15, 96),),
                                // )
                         ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SizedBox(
                          width: _deviceWidth*0.13,
                          child:  FloatingActionButton(
                            onPressed: () {
                                _showDialog();
                              },
                          backgroundColor: const Color.fromARGB(255, 77, 16, 87),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.add, color: Colors.white,),
                              Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Create New",
                                style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white,
                                fontSize: 20
                                ),
                                ),
                              )
                            ],
                          ),
                          ),
                        ),
                      )
                  ],
                ),
                
              ),
            ),
          )
        ],
      ),
    );
  }


  void _showDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text('Please choose any template'),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
             onPressed: () {
    
                Navigator.pop(context); // Close the current dialog
               _pickDirectoryAndCreateFolder();
             },
             icon: Image.asset("assets/images/layout1.png",
             width: 150,
             height: 150,
             )
             ,
             ),
             IconButton(
              onPressed: () {
    
                Navigator.push(
                  context,
                  MaterialPageRoute(
                 builder: (context) => Playground(), // Replace NewScreen with the screen you want to navigate to
                ),
              );
             },
             icon: Image.asset("assets/images/layout2.png",
             width: 150,
             height: 150,
             )
             ,
             ),
             IconButton(
              onPressed: () {
    
                Navigator.push(
                  context,
                  MaterialPageRoute(
                 builder: (context) => Playground(), // Replace NewScreen with the screen you want to navigate to
                ),
              );
             },
             icon: Image.asset("assets/images/layout3.png",
             width: 150,
             height: 150,
             )
             ,
             ),
             IconButton(
              onPressed: () {
    
                Navigator.push(
                  context,
                  MaterialPageRoute(
                 builder: (context) => Playground(), // Replace NewScreen with the screen you want to navigate to
                ),
              );
             },
             icon: Image.asset("assets/images/layout4.png",
             width: 150,
             height: 150,
             )
             ,
             ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}



void _filePickerDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text('Please choose a path where you want create your folder'),
        content: Text("Hello"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}

// Widget _filePickerDialog() {
//   return AlertDialog(
//     backgroundColor: Colors.white,
//     title: Text('Please choose a path where you want create your folder'),
//     content: Text("Hello"),
//     actions: [
//       TextButton(
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//         child: Text('Close'),
//       ),
//     ],
//   );
// }


void _pickDirectoryAndCreateFolder() async {
  // Get the directory path where you want to create the folder
  final directory = await getApplicationDocumentsDirectory();
  
  // Allow the user to specify a subdirectory name
  final newFolderName = await showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      String newFolderName = '';
      return AlertDialog(
        title: Text('Enter Folder Name'),
        content: TextField(
          onChanged: (value) {
            newFolderName = value;
          },
          decoration: InputDecoration(hintText: 'Folder Name'),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(newFolderName);
            },
            child: Text('Create'),
          ),
        ],
      );
    },
  );
  
  // If user provided a folder name
  if (newFolderName != null && newFolderName.isNotEmpty) {
    // Create the new directory
    final newFolderPath = '${directory.path}/$newFolderName';
    final newDirectory = Directory(newFolderPath);
    if (await newDirectory.exists()) {
      print('Folder already exists.');
    } else {
      await newDirectory.create();
      print('Folder created successfully at: $newFolderPath');
    }
  }
}

}
