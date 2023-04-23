import 'ConstVarsEnums.dart';


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
      if(text.length <MaxTextLength-1)
        if(text.contains(',')==false  && text !='Ошибка'){
          text=text+',';
        }
      break;
    case Operation.num0:
      if(text.length <MaxTextLength)
        if(text != '0' && text !='Ошибка'){
          text=text+'0';
        }
      break;
    case Operation.num00:
      if(text.length <MaxTextLength-1)
        if(text != '0' && text !='Ошибка'){
          text=text+'00';
        }
      break;

  }

}

void Nums(int num){
  if(text.length <MaxTextLength)
    if(text == '0' || text =='Ошибка'){
      text=num.toString();
    }else{
      text=text+num.toString();
    }
}





