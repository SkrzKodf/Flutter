import 'ConstVarsEnums.dart';
import 'package:flutter/material.dart';
import 'package:calculator2/Functions.dart';
import 'package:calculator2/Classes.dart';


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
            body: Container( child: Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Container( child:Flexible(child: Text(text, style:TextStyle(fontSize: 35,color: Colors.white),))),),

                Expanded(flex: 3, child: Container(child:
                   GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),itemCount: Keys.length, itemBuilder: (BuildContext context, int index){
                     if(index < 3){
                       return CalcKey(CKBackColor: Colors.grey,CKTextColor: Colors.black,CKText: Keys[index].toString(),CKPressed:(){setState(() {runOperation(Operations[index]);});} ,);
                   }else if(Keys[index] == '/' ||Keys[index] == 'X' ||Keys[index] == '-' ||Keys[index] == '+' ||Keys[index] == '=' ){
                       return CalcKey(CKBackColor: Colors.orange,CKTextColor: Colors.white,CKText: Keys[index].toString(),CKPressed: (){setState(() {runOperation(Operations[index]);});} ,);
                     }else if(index < 15){
                       return CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: Keys[index].toString(),CKPressed:(){setState(() {Nums(Keys[index]);});} ,);
                     }else{
                       return CalcKey(CKBackColor: Colors.black12,CKTextColor: Colors.white,CKText: Keys[index].toString(),CKPressed:(){setState(() {runOperation(Operations[index]);});} ,);
                     }
                   }),)
                  ,),
              ],),)
        )
    );
  }
}








/*
Row(
                  children:[ Container( child:Flexible(child: Text(text, style:TextStyle(fontSize: 35,color: Colors.white),))),]),
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
 */






