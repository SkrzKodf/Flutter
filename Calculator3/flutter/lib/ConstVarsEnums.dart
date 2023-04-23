
late String text;
late double TempA,TempB;
late int id;

const int MaxTextLength =15;
final List Keys=['AC','+/-','%','/',7,8,9,'X',4,5,6,"-",1,2,3,'+','0','00',',','='];
final List Operations=[
  Operation.AC,
  Operation.plmn,
  Operation.percent,
  Operation.divide,
  7,
  8,
  9,
  Operation.multiply,
  4,
  5,
  6,
  Operation.subtract,
  1,
  2,
  3,
  Operation.add,
  Operation.num0,
  Operation.num00,
  Operation.com,
  Operation.answ];

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

