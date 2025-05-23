import 'package:flutter/material.dart';
import 'package:project3/questionpaper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pass1Controller = TextEditingController();
  final pass2Controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? emailValidation() {
    if (emailController.text.isEmpty) {
      return "Email required";
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(emailController.text)) {
      return "Invalid email format";
    } else {
      return null;
    }
  }

  String? passValidation() {
    if (pass1Controller.text.isEmpty) {
      return "Enter password";
    } else if (pass1Controller.text.length != 8) {
      return "Password length must be 8 characters";
    } else if (pass1Controller.text != pass2Controller.text) {
      return "Passwords do not match";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Validation"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      validator: (value) {
                        return (value!.isEmpty) ? "Name is required" : null;
                      },
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: "Enter your name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      validator: (value) => emailValidation(),
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Enter E-mail",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      validator: (value) => passValidation(),
                      controller: pass1Controller,
                      decoration: InputDecoration(
                        labelText: "Enter password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      validator: (value) => passValidation(),
                      controller: pass2Controller,
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Navigate to the next page with the name
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionPaper(name: nameController.text),
                          ),
                        );
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
