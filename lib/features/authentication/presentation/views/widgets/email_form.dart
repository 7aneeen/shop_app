import 'package:flutter/material.dart';

class EmailForm extends StatefulWidget {
   EmailForm({super.key, required this.emailcontroller});
  final TextEditingController emailcontroller;

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  @override
  void initState() {
    //emailcontroller = TextEditingController(text: "haneen@gmail.com");
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        final bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value!);
        if (value.isEmpty) {
          return "Email must not be empty";
        }
        if (emailValid == false) {
          return "Email format must be valid";
        }
        return null;
      },
      controller: widget.emailcontroller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "Email",
        border: OutlineInputBorder(),
      ),
    );
  }
}
