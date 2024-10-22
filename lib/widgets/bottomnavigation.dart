import 'package:flutter/material.dart';
import 'package:learning/widgets/animatedtext.dart';
import 'package:learning/widgets/bottomsheet.dart';
import 'package:learning/widgets/dismissible.dart';
import 'package:learning/widgets/image.dart';

class BottomnavigationWidget extends StatefulWidget {
  const BottomnavigationWidget({super.key});

  @override
  State<BottomnavigationWidget> createState() => _BottomnavigationWidgetState();
}

class _BottomnavigationWidgetState extends State<BottomnavigationWidget> {
  int selectedindex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Add"),
  //   Text("Profile")
  // ];

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Navigation"),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AnimatedTextWidget(),
          DismissibleWidget(),
          BottomSheetWidget(),
          ImageWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.text_format,
            ),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delete,
            ),
            label: 'Dismissible',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.move_down,
            ),
            label: 'BottomSheet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
            ),
            label: 'Image',
          ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.deepPurple,
        onTap: onTapped,
      ),
    );
  }
}
