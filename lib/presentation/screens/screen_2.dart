import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              const _Img1(),
              const _Img2(),
              const _Img3(),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.45, // Ajusta este valor según lo que necesites
                left: 0,
                right: 0,
                child: const Center(
                  child: Text(
                    'Bienvenido', 
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),)
                ),
              ),
              const _Login()
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


class _Img3 extends StatelessWidget {
  const _Img3();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Positioned(
      top: media.height*0.22,
      left: (media.width - media.width*0.7) /2,

      child: SizedBox(
        width: media.width * 0.7,
        height: media.width * 0.5,
        child: Image.asset('assets/img/iconLogin.png',
        fit: BoxFit.fill,
        )
      )
    );
  }
}


class _Login extends StatelessWidget {
  const _Login();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: media.width,
        height: media.height * 0.42 ,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35)
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(153, 17, 17, 17),
              blurRadius: 15,
              spreadRadius: 4,
              offset: Offset(5, 3)
            )
          ]
        ),
        child: const _InputsLogin(),
      ),
    );
  }
}

class _InputsLogin extends StatelessWidget {
  const _InputsLogin();

  @override
  Widget build(BuildContext context) {

    final media = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Al E-commerce', 
            style: TextStyle(
              fontSize: 25
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 228, 225, 225)
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(166, 128, 125, 125),
                  blurRadius: 5,
                  spreadRadius: -2,
                  offset: Offset(5, 5)
                )
              ]
            ),
            
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                labelStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none
                ),
                prefixIcon: Icon(Icons.person_rounded, color: Colors.grey[600],),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 228, 225, 225)
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(166, 128, 125, 125),
                  blurRadius: 5,
                  spreadRadius: -2,
                  offset: Offset(5, 5)
                )
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                labelStyle: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none

                ),
                prefixIcon: Icon(Icons.lock_rounded, color: Colors.grey[600],),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFFFFB956),
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10)
              
            ), 
            child: const Text('Ingresar' ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
            )
        ],
      )
    );
  }
}


