import 'package:flutter/material.dart';

class TarjetaTexto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.02),
      width: size.width * 0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
      child: Content(size: size),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(  
      gradient: RadialGradient(
        center: Alignment(0,2.5),
        radius: 1.8, // near the top right
        colors: [                  
          Color(0xFFFFFF00),
          Color(0xFFFEFFAB),    
          Color(0xFFF4D2C6),
          Color(0xFFE4C5F3),
          Color(0xFFC3EDEE)

        ]
      ),
      borderRadius: BorderRadius.circular(20),
      ), 
      child: Column(  
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10,top: 10),
                child: Icon(Icons.close, size: size.height * 0.03,)),  
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(" you did it! here \n you can manage \n you alarm, \n change time and \n other things",
                style: TextStyle(fontSize: 15 * size.width * .0025 , fontWeight: FontWeight.bold, color: Colors.black),),
              ),
              Image(image: AssetImage('assets/party1.png'),width:size.width * .5),
            ],
          ),
        ],
      ),
    );
  }
}
