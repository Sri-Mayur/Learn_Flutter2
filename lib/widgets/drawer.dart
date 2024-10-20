import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mayur Srivastav",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                          Text("abc@gmail.com")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared With Me"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("Upload"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("LogOut"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Text("Hey There!"),
        ),
      ),
    );
  }
}
