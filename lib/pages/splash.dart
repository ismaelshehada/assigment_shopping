import 'package:assigment_shopping/components/Carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text(
                    "Buy your favourites",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "personalization of your " "\n" + "      shopping brands",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Container(height: 400.0, child: CarouselWithIndicatorDemo()),
                Container(
                  padding: EdgeInsets.all(20),
                  child: RaisedButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    shape: StadiumBorder(),
                    child: Container(
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
                        'START SHOPPING',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 80.0, vertical: 20.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("home");
                    },
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("singUpCompany");
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )),
                      Container(child: Text("or  ")),
                      Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("logim");
                              },
                              child: Text(
                                "Log in",
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
            )
          ],
        ),
      ),
    ));
  }
}
