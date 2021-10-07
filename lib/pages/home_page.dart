import 'package:challenge2/widgets/Contenido.dart';
import 'package:challenge2/widgets/TarjetaTexto.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.grey[200],
            child: ListView(
              children: [
                Container(
                  child: Column(
                  children: [
                  TarjetaTexto(),
                  SizedBox(height: 15,),
                  Contenido()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}