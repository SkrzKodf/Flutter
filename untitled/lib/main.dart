import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
  home: Home(),
));



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String text;
  var TempA,TempB,id;

  @override
  void initState() {
    super.initState();
    text='0';
    TempA=null;
    TempB=null;
    id=null;
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
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {text='0';TempA=null;TempB=null;id=null;});},backgroundColor: Colors.grey, child: Text('AC',style:TextStyle(fontSize: 35,color: Colors.black),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {setState(() {  if(text != '0'){  if(text.contains('-')){text=text.replaceAll('-', '');}else{text='-'+text;} }   });});},backgroundColor: Colors.grey, child: Text('+/-',style:TextStyle(fontSize: 35,color: Colors.black),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {
                      if(text != '0'){
                        text = (double.parse(text)/100).toString();
                      }
                    });},backgroundColor: Colors.grey, child: Text('%',style:TextStyle(fontSize: 35,color: Colors.black),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {
                      if(TempA==null){
                        TempA=double.parse(text);
                        text='0';
                        id=1;
                      }
                    });},backgroundColor: Colors.orange, child: Text('/',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='7';}else{text=text+'7';}});},backgroundColor: Colors.black12, child: Text('7',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='8';}else{text=text+'8';}});},backgroundColor: Colors.black12, child: Text('8',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='9';}else{text=text+'9';}});},backgroundColor: Colors.black12, child: Text('9',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {
                      if(TempA==null){
                        TempA=double.parse(text);
                        text='0';
                        id=2;
                      }
                    });},backgroundColor: Colors.orange, child: Text('x',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='4';}else{text=text+'4';}});},backgroundColor: Colors.black12, child: Text('4',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='5';}else{text=text+'5';}});},backgroundColor: Colors.black12, child: Text('5',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='6';}else{text=text+'6';}});},backgroundColor: Colors.black12, child: Text('6',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {
                      if(TempA==null){
                        TempA=double.parse(text);
                        text='0';
                        id=3;
                      }
                    });},backgroundColor: Colors.orange, child: Text('-',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='1';}else{text=text+'1';}});},backgroundColor: Colors.black12, child: Text('1',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='2';}else{text=text+'2';}});},backgroundColor: Colors.black12, child: Text('2',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {if(text == '0'){text='3';}else{text=text+'3';}});},backgroundColor: Colors.black12, child: Text('3',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10), child:FloatingActionButton(onPressed: (){setState(() {
                      if(TempA==null){
                        TempA=double.parse(text);
                        text='0';
                        id=4;
                      }
                    });},backgroundColor: Colors.orange, child: Text('+',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10,bottom: 10), child:FloatingActionButton(onPressed: (){setState(() {if(text != '0'){text=text+'0';}  });},backgroundColor: Colors.black12, child: Text('0',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10,bottom: 10), child:FloatingActionButton(onPressed: (){setState(() {if(text != '0'){text=text+'00';}  });},backgroundColor: Colors.black12, child: Text('00',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10,bottom: 10), child:FloatingActionButton(onPressed: (){setState(() { if(text.contains(',')==false){text=text+',';} });},backgroundColor: Colors.black12, child: Text(',',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                    Container(height: 80,width: 80,margin: EdgeInsets.only(top:10,bottom: 10), child:FloatingActionButton(onPressed: (){setState(() {

                      if(id==1){
                        if(text=='0'){
                          text='Ошибка';
                          TempA=null;
                          TempB=null;
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


                    });},backgroundColor: Colors.orange, child: Text('=',style:TextStyle(fontSize: 35,color: Colors.white),),),),
                  ],),
              ],),)

        )
    );
  }
}







/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

 */
