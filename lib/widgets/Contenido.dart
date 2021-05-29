import 'package:challenge2/widgets/CustomSwitch.dart';
import 'package:flutter/material.dart';

class Contenido extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.9, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),       
        color: Colors.white,        
      ),
      child: Column(
        children: [
          FirstRow(),
          DividerH(),
          ContentRow(),
        ],
      )
    );
  }
}

class ContentRow extends StatelessWidget {
  const ContentRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.nights_stay,size: 50,),
              Column(
                children: [
                  Text("to bed", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                  Text("23:30", style: Theme.of(context).textTheme.headline5,)
                ],
              ),
            ],
          ),
          DividerV(),  
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Icon(Icons.access_time_outlined,size: 25,color: Colors.black45,)
              ),
              Text("8 hours sleep", style: Theme.of(context).textTheme.headline6,),
              Expanded(child: Container()),
              Icon(Icons.arrow_forward_ios,color: Colors.black45)
            ],
          ),
          DividerV(),  
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.wb_sunny_sharp,size: 45,),

              Container(
                margin: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Text("7:30", style: Theme.of(context).textTheme.headline5,),
                    Text("wake up", style: Theme.of(context).textTheme.headline6,),
                  ],
                ),
              ),       
            ],
          ),      
        ],
      ),
    );
  }
}

class DividerH extends StatelessWidget {
  const DividerH({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 10), child: Divider(thickness: 1,));
  }
}

class DividerV extends StatelessWidget {
  const DividerV({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 40,
      width: 1,
      color: Colors.black38
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Alarm"),
          Expanded(child: Container(),),
          CustomButton(),
        ],
      ),
    );
  }
}