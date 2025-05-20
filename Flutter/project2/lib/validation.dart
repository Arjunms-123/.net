import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  final formKey1 = GlobalKey<FormState>();
  final name = TextEditingController();
  final place = TextEditingController();
  final quali = TextEditingController();
  final phno = TextEditingController();
  final email = TextEditingController();
  final pass1 = TextEditingController();
  final pass2 = TextEditingController();

  String? emailValidation() {
    if (email.text.isEmpty) {
      return "Email required";
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email.text)) {
      return "Invalid email format";
    } else {
      return null;
    }
  }

  String? passValidation() {
    if (pass1.text.isEmpty) {
      return "Enter password";
    } else if (pass1.text.length != 8) {
      return "Password length must be 8 characters";
    } else if (pass1.text != pass2.text) {
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
              key: formKey1,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      validator: (value) {
                        return (value!.isEmpty) ? "Name is required" : null;
                      },
                      controller: name,
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
                      validator: (value) {
                        return (value!.isEmpty) ? "Place is required" : null;
                      },
                      controller: place,
                      decoration: InputDecoration(
                        labelText: "Enter your place",
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
                      validator: (value) {
                        return (value!.isEmpty)
                            ? "Qualification is required"
                            : null;
                      },
                      controller: quali,
                      decoration: InputDecoration(
                        labelText: "Enter your Qualification",
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Phone number is required";
                        } else if (phno.text.length != 10) {
                          return "Phone number should be 10 digits";
                        }
                        return null;
                      },
                      controller: phno,
                      decoration: InputDecoration(
                        labelText: "Enter your phone number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
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
                      if (formKey1.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                            content: const Text("Form submitted successfully"),
                            action: SnackBarAction(
                              label: "Continue",
                              onPressed: () {
                                // You can navigate to another page or perform another action here
                              },
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text("Submit"),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  // New Column for Email and Password
                  Column(
                    children: [
                      SizedBox(
                        width: 200,
                        child: TextFormField(
                          validator: (context) => emailValidation(),
                          controller: email,
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
                          validator: (context) => passValidation(),
                          controller: pass1,
                          decoration: InputDecoration(
                            labelText: "Enter password",
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
                          validator: (context) => passValidation(),
                          controller: pass2,
                          decoration: InputDecoration(
                            labelText: "Confirm password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
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
                          if (formKey1.currentState!.validate()) {
                            // Handle the submission of email and password
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Colors.green,
                                content: const Text(
                                    "Email and Password submitted successfully"),
                              ),
                            );
                          }
                        },
                        child: const Text("Submit"),
                      ),
                    ],
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
