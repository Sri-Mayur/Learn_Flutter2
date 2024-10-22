import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formkey = GlobalKey<FormState>();

  //------------------Functions----------------
  void trySubmit() {
    final isValid = _formkey.currentState!.validate();

    if (isValid) {
      _formkey.currentState!.save(); // Save the form inputs
      submitform();
    } else {
      print("Error");
    }
  }

  void submitform() {
    print({
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'password': password
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter First Name"),
                    key: ValueKey('firstname'),
                    validator: (value) {
                      if (value!.isEmpty) return "Enter the First Name";
                      return null;
                    },
                    onSaved: (value) {
                      firstname = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter Last Name"),
                    key: ValueKey('lastname'),
                    validator: (value) {
                      if (value!.isEmpty) return "Enter the Last Name";
                      return null;
                    },
                    onSaved: (value) {
                      lastname = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter the Email ID"),
                    key: ValueKey('email'),
                    validator: (value) {
                      if (value!.isEmpty) return "Email ID is required";
                      return null;
                    },
                    onSaved: (value) {
                      email = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter the Password"),
                    key: ValueKey('password'),
                    obscureText: true, // Hide the password input
                    validator: (value) {
                      if (value!.length <= 5)
                        return "Password length should be greater than 4";
                      return null;
                    },
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        trySubmit();
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
