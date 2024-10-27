import 'dart:convert';

void main(){
  Checker test1 = Checker("{what is (42)}?");
  Checker test2 = Checker("[text} ");
  Checker test3 = Checker("{[[(a)b]c]d} ");
  print("Test 1 : ${test1.check()}");
  print("Test 2 : ${test2.check()}");
  print("Test 3 : ${test3.check()}");
  

}
class Checker{
  String data;
  Checker(this.data);

  bool check(){
    List<String> stacker =[];
    for(int i=0;i<data.length ; i++){
      if(data[i] == "(" || data[i] == "[" || data[i] == "{"){
        stacker.add(data[i]);
      }
      
      if(data[i] == ")" && stacker.last == "("){
        stacker.remove(stacker.last);
      }else
      if(data[i] == "}" && stacker.last == "{"){
        stacker.remove(stacker.last);
      }else
      if(data[i] == "]" && stacker.last == "["){
        stacker.remove(stacker.last);
      }
    }
    if(stacker.isNotEmpty){
      return false;
    }else {
      return true;
    }
  }

}