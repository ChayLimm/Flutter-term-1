class Distance{
  late num distance;
  
  //this is name function return the newValue in meters
  Distance.cms(num value){this.distance = value/100;}
  Distance.ms(num value){this.distance = value;}
  Distance.kms(num value){this.distance = value*1000;}

  num get ms => distance;
  num get kms => distance / 1000;
  num get cms => distance * 100;

  Distance operator +(Distance p){
    return Distance.ms(this.distance + p.distance);
  }
}

void main(){
 final Distance d1 = Distance.kms(3.4);
 final  Distance d2 =Distance.ms(3.4);

  print((d1 + d2).kms);

  

}