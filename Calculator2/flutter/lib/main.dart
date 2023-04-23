import 'dart:html';
import 'package:flutter/material.dart';

late String text;
late double TempA,TempB;
late int id;


enum Operation{
  add,
  subtract,
  multiply,
  divide,
  percent,
  answ,
  plmn,
  AC,
  num0,
  num00,
  com
}

void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.black12),
  home: Home(),
));



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    super.initState();
    text='0';
    TempA=0;
    TempB=0;
    id=0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.orange),
        home: Scaffold(
            appBar:   AppBar(
              title: Text('Calculator',style: TextStyle(color: Colors.black),),backgroundColor: Colors.grey,
              centerTitle: true,
            ),
            backgroundColor: Colors.black87,
            body: Container(child: Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container( child:Flexible(child: Text(text, style:TextStyle(fontSize: 35,color: Colors.white),)))
                  ],),

                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalcKey(CKBackColor: Colors.grey,CKTextColor: Colors.black,CKText: 'AC',CKPressed:(){setState(() {runOperation(Operation.AC);});} ,),
                    CalcKey(CKBackColor: Colors.grey,CKTextColor: Colors.black,CKText: '+/-',CKPressed: (){setState(() {setState(() {runOperation(Operation.plmn);});});},),
                    CalcKey(CKBackColor: Colors.grey,CKTextColor: Colors.black,CKText: '%',CKPressed:(){setState(() {runOperation(Operation.percent);});} ,),
                    CalcKey(CKBackColor: Colors.orange,CKTextColor: Colors.white,CKText: '/',CKPressed: (){setState(() {runOperation(Operation.divide);});} ,),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '7',CKPressed:(){setState(() {Nums(7);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '8',CKPressed:(){setState(() {Nums(8);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '9',CKPressed:(){setState(() {Nums(9);});} ,),
                    CalcKey(CKBackColor: Colors.orange,CKTextColor: Colors.white,CKText: 'X',CKPressed:(){setState(() {runOperation(Operation.multiply);});},),
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '4',CKPressed:(){setState(() {Nums(4);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '5',CKPressed:(){setState(() {Nums(5);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '6',CKPressed:(){setState(() {Nums(6);});} ,),
                    CalcKey(CKBackColor: Colors.orange,CKTextColor: Colors.white,CKText: '-',CKPressed:(){setState(() {runOperation(Operation.subtract);});},),
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '1',CKPressed:(){setState(() {Nums(1);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '2',CKPressed:(){setState(() {Nums(2);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '3',CKPressed:(){setState(() {Nums(3);});} ,),
                    CalcKey(CKBackColor: Colors.orange,CKTextColor: Colors.white,CKText: '+',CKPressed:(){setState(() {runOperation(Operation.add);});},),
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '0',CKPressed:(){setState(() {runOperation(Operation.num0);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: '00',CKPressed:(){setState(() {runOperation(Operation.num00);});} ,),
                    CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: ',',CKPressed:(){setState(() {runOperation(Operation.com);});} ,),
                    CalcKey(CKBackColor: Colors.orange,CKTextColor: Colors.white,CKText: '=',CKPressed:(){setState(() {runOperation(Operation.answ);});},),
                  ],),
              ],),)
        )
    );
  }
}

class CalcKey extends StatelessWidget {
  final CKBackColor,CKTextColor,CKText,CKPressed;

  CalcKey({this.CKBackColor, this.CKTextColor, this.CKText, this.CKPressed});

  @override
  Widget build(BuildContext context){
    return Container(
      height: (MediaQuery.of(context).size.width-50)/4,width: (MediaQuery.of(context).size.width-50)/4,margin: const EdgeInsets.only(top:10),
      child: FloatingActionButton(onPressed: CKPressed,backgroundColor:CKBackColor ,
        child:Text(CKText,style: TextStyle(fontSize: 35,color: CKTextColor),) ,),
    );
  }
  }
//height 80


void runOperation( Operation op){

  switch(op){
    case Operation.plmn:
      if(text != '0'){
        if(text.contains('-')){
          text=text.replaceAll('-', '');
        }else{
          text='-'+text;
        } }
      break;
    case Operation.percent:
      if(text != '0'){
        text = (double.parse(text)/100).toString();
        id=0;
      }
      break;
    case Operation.divide:
      TempA=double.parse(text);
      text='0';
      id=1;
      break;
    case Operation.multiply:
      TempA=double.parse(text);
      text='0';
      id=2;
      break;
    case Operation.subtract:
      TempA=double.parse(text);
      text='0';
      id=3;
      break;
    case Operation.add:
      TempA=double.parse(text);
      text='0';
      id=4;
      break;
    case Operation.answ:

      if(id==1){
        if(text=='0'){
          text='Ошибка';
          TempA=0;
          TempB=0;
          id=0;
        }else{
          TempB=double.parse(text);
          text = (TempA/double.parse(text)).toString();
          id = 5;
        }
      }else if(id==2){
        TempB=double.parse(text);
        text = (TempA*double.parse(text)).toString();
        id = 6;
      }else if(id==3){
        TempB=double.parse(text);
        text = (TempA-double.parse(text)).toString();
        id = 7;
      }else if(id==4){
        TempB=double.parse(text);
        text = (TempA+double.parse(text)).toString();
        id = 8;
      }else if(id==5){
        TempA=double.parse(text);
        text=(TempA/TempB).toString();
      }else if(id==6){
        TempA=double.parse(text);
        text=(TempA*TempB).toString();
      }else if(id==7){
        TempA=double.parse(text);
        text=(TempA-TempB).toString();
      }else if(id==8){
        TempA=double.parse(text);
        text=(TempA+TempB).toString();
      }
      break;
    case Operation.AC:
      text='0';
      TempA=0;
      TempB=0;
      id=0;
      break;
    case Operation.com:
      if(text.length <19)
      if(text.contains(',')==false  && text !='Ошибка'){
        text=text+',';
      }
      break;
    case Operation.num0:
      if(text.length <20)
      if(text != '0' && text !='Ошибка'){
        text=text+'0';
      }
      break;
    case Operation.num00:
      if(text.length <19)
      if(text != '0' && text !='Ошибка'){
        text=text+'00';
      }
      break;

  }

}

void Nums(int num){
  if(text.length <20)
    if(text == '0' || text =='Ошибка'){
      text=num.toString();
    }else{
      text=text+num.toString();
    }
}









