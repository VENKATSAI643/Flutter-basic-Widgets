import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = "";
  String lastname = "";
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print("Error");
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: const Center(child: Text("Form")),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration:
                      const InputDecoration(hintText: "Enter First Name"),
                  key: const ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'First name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(hintText: "Enter Last Name"),
                  key: const ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Last name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Enter Email"),
                  key: const ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Email should contain @ symbol';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(hintText: "Enter Password"),
                  key: const ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return 'Minimum length of the password should be 6';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
