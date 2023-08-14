import 'package:flutter/material.dart';


class Easyscreen1 extends StatelessWidget {
  const Easyscreen1({super.key});

  @override
  Widget build(BuildContext context) {

    final media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: const Color(0xFF213E70), // Color de fondo morado
        child:  Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              _W1(height:media.height*0.15 ,width: media.width*0.9),
              const SizedBox(height: 40),
               _W2(height:media.height*0.15 ,width: media.width*0.9),
              const SizedBox(height: 40),
               _W3(height:media.height*0.15 ,width: media.width*0.9),
              const SizedBox(height: 40),
               _W4(height:media.height*0.15 ,width: media.width*0.9)
            ],
          ),
        ),
      ),
    );
  }
}


class _W1 extends StatelessWidget {
  final double width;
  final double height;

  const _W1({
    required this.width, 
    required this.height
    });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: const Color(0xFFFFB956),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(153, 17, 17, 17),
              blurRadius: 10,
              spreadRadius: 3,
              offset: Offset(3, 5)
            )
          ]
        ),
        
        child: const Align(
          alignment: Alignment.center,
          child: Text('Material Desing', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold,),)),
      );
  }
}


class _W2 extends StatelessWidget {
  final double width;
  final double height;

  const _W2({
    required this.width, 
    required this.height
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFFFB956),
        borderRadius: BorderRadius.circular(20),
      ),
      
      child: const Align(
        alignment: Alignment.center,
        child: Text('Flat Desing', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold,),)),
    );
  }
}

class _W3 extends StatelessWidget {
  final double width;
  final double height;
  const _W3({
    required this.width, 
    required this.height
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFF213E70),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(153, 17, 17, 17),
            blurRadius: 10,
            spreadRadius: 3,
            offset: Offset(3, 6)
          ),
          BoxShadow(
            color: Color.fromARGB(141, 218, 210, 210),
            blurRadius: 10,
            spreadRadius: -3,
            offset: Offset(-6, -7)
          )
        ],

        
      ),
      
      child: const Align(
        alignment: Alignment.center,
        child: Text('Neumorphism', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold,),)),
    );
  }
}

class _W4 extends StatelessWidget {
  final double width;
  final double height;
  const _W4({
    required this.width, 
    required this.height
    });

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blueGrey[200],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 3)
        ),
        alignment: Alignment.center,
        child: const Text('Glass', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold,),)
        
        
      );
  }
}