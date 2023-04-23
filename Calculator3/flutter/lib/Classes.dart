import 'package:flutter/material.dart';

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