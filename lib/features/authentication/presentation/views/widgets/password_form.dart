import 'package:flutter/material.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key, required this.passwordcontroller});
  final TextEditingController passwordcontroller ;

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool visible = true;
  @override
  void initState() {
    //emailcontroller = TextEditingController(text: "haneen@gmail.com");
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: visible,
      validator: (value) {
        if (value!.isEmpty) {
          return "Password must not be empty";
        }
        if (value.length < 8) {
          return "Password must not be less than 8";
        }
        return null;
      },
      onFieldSubmitted: (value) {
        print(value);
      },
      onChanged: (value) {
        print(value);
      },
      controller: widget.passwordcontroller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
            icon: Icon(
              visible == true ? Icons.visibility_off : Icons.visibility,
            )),
        labelText: "Password",
        border: OutlineInputBorder(),
      ),
    );
  }
}
