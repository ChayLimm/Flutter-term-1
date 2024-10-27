import 'dart:io';

void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];
  List<int> passed = [];
  // You code
  for(int i = 0; i < scores.length; i++) {
   if(scores[i]>=50){
    passed.add(scores[i]);
   }
  }
  print(passed);
  print("passed : ${passed.length}");
  
}
