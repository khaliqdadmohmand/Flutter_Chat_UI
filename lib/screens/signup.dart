import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../global.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_wd1udlcz.json')),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Create an account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: cardColor),
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: TextFormField(
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.amber,
                                focusColor: Colors.amber,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                                hintText: "Full name..."),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 3,
                          child: TextFormField(
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.amber,
                                focusColor: Colors.amber,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                                hintText: "Email Address..."),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Card(
                          elevation: 3,
                          child: TextFormField(
                            obscureText: true,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.amber,
                                focusColor: Colors.amber,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                                hintText: "Password..."),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Card(
                          elevation: 3,
                          child: TextFormField(
                            obscureText: true,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 17),
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                fillColor: Colors.amber,
                                focusColor: Colors.amber,
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w300),
                                hintText: "Confirm Password..."),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Already have an account?',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign In',
                                  style: const TextStyle(
                                      color: Colors.indigo, fontSize: 18),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pop(context);
                                    })
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: RaisedButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          onPressed: () {
                            print('Button Clicked.');
                          },
                          textColor: Colors.white,
                          color: buttonColor,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(),
                                  Container(
                                    color: buttonColor,
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 4, 4, 4),
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                                    child: Icon(
                                      Icons.app_registration_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ))))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
