class Distance{
  final double distance;
  late double newValueInMeters;
  //this is name function return the newValue in meters
  Distance.cms(this.distance){this.newValueInMeters = distance/1000;}
  Distance.ms(this.distance){this.newValueInMeters = distance;}
  Distance.kms(this.distance){this.newValueInMeters = distance*1000;}

  double get ms => newValueInMeters;
  double get kms => newValueInMeters / 1000;
  double get cms => newValueInMeters * 1000;

  Distance operator +(Distance p){
    return Distance.ms(this.newValueInMeters + p.newValueInMeters);
  }
}

void main(){
  Distance d1 = Distance.kms(3.4);
  Distance d2 =Distance.ms(3.4);
  print((d1 + d2).kms);

  

}