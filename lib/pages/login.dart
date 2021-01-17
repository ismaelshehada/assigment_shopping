import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    child: SvgPicture.asset('image/image1.svg'),
                    left: -60,
                    top: -60,
                  ),
                  Positioned(
                    child: SvgPicture.asset('image/image1.svg'),
                    right: -60,
                    bottom: -60,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 100, 0, 0),
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            "Enter your data",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Phone",
                                fillColor: Colors.white70,
                                focusColor: Colors.grey,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                fillColor: Colors.white70,
                                focusColor: Colors.grey,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                            alignment: AlignmentDirectional.centerEnd,
                            child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                  ),
                                  textAlign: TextAlign.center,
                                ))),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: RaisedButton(
                            textColor: Colors.white,
                            padding: EdgeInsets.all(0.0),
                            shape: StadiumBorder(),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff606060),
                                    Color(0xff131313),
                                  ],
                                ),
                              ),
                              child: Text(
                                'LOG IN',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 80.0, vertical: 20.0),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(child: Text("Don't have account?  ")),
                              Container(
                                  child: FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          fontSize: 20,
                                          decoration: TextDecoration.underline,
                                        ),
                                        textAlign: TextAlign.center,
                                      ))),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
