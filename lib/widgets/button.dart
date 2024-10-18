import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                    overlayColor: WidgetStateProperty.all(Colors.black),
                    elevation: WidgetStateProperty.all(20),
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 121, 64, 255))),
                onPressed: () {},
                child: Text(
                  'Press me!',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).primaryColor)),
                  onPressed: () {
                    print("Like");
                  },
                  child: Text(
                    'Press me!',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
