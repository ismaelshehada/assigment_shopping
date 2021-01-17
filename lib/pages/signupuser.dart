import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingUpUser extends StatefulWidget {
  @override
  _SingUpUserState createState() => _SingUpUserState();
}

class _SingUpUserState extends State<SingUpUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          ],
        ),
      ),
    );
  }
}
