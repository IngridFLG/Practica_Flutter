import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: const Stack(
            children: [
              _Img1(),
              _Img2()
            ],
          ),
        ),
      ),
    );
  }
}



class _Img1 extends StatelessWidget {
  const _Img1();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Positioned(
      top: -media.height*0.1,
      left: -media.width*0.26,

      child: SizedBox(
        width: media.width * 0.6,
        height: media.width * 0.6,
        child: Image.asset('assets/img/groupCirclesTwo.png',
        fit: BoxFit.fill,
        )
      )
    );
  }
}

class _Img2 extends StatelessWidget {
  const _Img2();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Positioned(
      top: -media.height*0.025,
      left: media.width*0.70,

      child: SizedBox(
        width: media.width * 0.6,
        height: media.width * 0.6,
        child: Image.asset('assets/img/groupCirclesOne.png',
        fit: BoxFit.fill,
        )
      )
    );
  }
}