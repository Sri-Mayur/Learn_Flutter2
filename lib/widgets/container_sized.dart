import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Container and SizedBox'),
      ),
      body: Center(
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                //shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(20)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 10,
                    color: const Color.fromARGB(255, 27, 9, 39),
                  )
                ]),
            child:
                Center(child: Text("Hello", style: TextStyle(fontSize: 20)))),

        // child: SizedBox(
        //   height: 50,
        //   width: 50,
        //   child: Text("Hello"),
        // ),
      ),
    );
  }
}
