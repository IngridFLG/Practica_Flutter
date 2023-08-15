import 'package:flutter/material.dart';


class EcommerceDos extends StatelessWidget {
  const EcommerceDos({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child:  Column(
            children: [
              SizedBox(height: media.height*0.15,),
              const Row(
                children: [
                  _Texto(),
                  SizedBox(width: 20,),
                  _Img1()
                ],
              ),
              const _InputsLogin()
            ],
          ),
        ) 
      ),
    );
  }
}

class _Texto extends StatelessWidget {
  const _Texto();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: media.height*0.1, horizontal: media.width*0.06),
      child:  Column(
        children: [
          Text(
            'Bienvenido', 
              style: TextStyle(
                fontSize: media.width*0.06,
                fontWeight: FontWeight.bold
              ),        
            ),
            Text(
              'Al E-commerce',
                style: TextStyle(
                  fontSize: media.width*0.05
                ),
            )
        ],
      )
    );
  }
}

class _Img1 extends StatelessWidget {
  const _Img1();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      width: media.width*0.43,
      height: media.width*0.32,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Image.asset('assets/img/iconLogin.png', fit: BoxFit.fill,),
      
    );
  }
}

class _InputsLogin extends StatelessWidget {
  const _InputsLogin();

  @override
  Widget build(BuildContext context) {

    final media = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(211, 230, 229, 229),
              borderRadius: BorderRadius.circular(30),
            ),
            
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none
                ),
                prefixIcon: const Icon(Icons.person_rounded, color: Colors.black,),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(211, 230, 229, 229),
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none

                ),
                prefixIcon: const Icon(Icons.lock_rounded, color: Colors.black,),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0XFFFFB956),
              padding: EdgeInsets.symmetric(horizontal: media.width*0.33, vertical: media.height*0.02)
              
            ), 
            child: Text('Ingresar' ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: media.width*0.04),)
            )
        ],
      )
    );
  }
}

