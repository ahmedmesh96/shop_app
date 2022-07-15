import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final TextInputType TextInputTypeee;
  final bool isPassword;
  final String hintTexttt;

  const MyTextField({Key? key, required this.TextInputTypeee, required this.hintTexttt, required this.isPassword}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextField(
                keyboardType: TextInputTypeee,
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: hintTexttt,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(8),
                ),
              );
    
  }
}