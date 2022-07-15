import 'package:flower_app/screens/sign_up.dart';
import 'package:flutter/material.dart';


import '../shard/contast/color.dart';
import '../shard/textfield.dart';


class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  appBar: AppBar(
        //   automaticallyImplyLeading: true,
        //   backgroundColor: Color.fromARGB(255, 3, 157, 67),
        //   title: Text(
        //     "Sing in",
        //     style: TextStyle(fontSize: 27),
        //   ),
        //   centerTitle: false,
        // ),
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            MyTextField(
                              TextInputTypeee: TextInputType.emailAddress,
                              isPassword: false,
                              hintTexttt: "Enter Your Email",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MyTextField(
                              TextInputTypeee: TextInputType.text,
                              isPassword: true,
                              hintTexttt: "Enter Your Password",
                            ),
                            
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Sing in",
                                style: TextStyle(fontSize: 22),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(BTNgreen),
                                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)))
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(decoration: TextDecoration.underline),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Do not have an account?"),
                                TextButton(
                                  onPressed: () {
                                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUp()),);
                                  },
                                  child: Text(
                                    "Sign up?",
                                    style: TextStyle(decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
            ),
          ),
        ),
      ),
    );
    
  }
}