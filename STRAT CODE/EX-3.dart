class MyDuration {

  late int _milliseconds;

  MyDuration(this._milliseconds);
  MyDuration.fromHours(int hours) {this._milliseconds = hours * 3600000;}
  MyDuration.fromMinutes(int minutes){this._milliseconds = minutes * 60000;}

  
  MyDuration operator +(MyDuration other) {
    // print(this._milliseconds);
    // print(other._milliseconds);
   int res = this._milliseconds + other._milliseconds;
    return MyDuration(res);
  }

  bool operator >(MyDuration other){
    return this._milliseconds > other._milliseconds;
  }

   MyDuration operator -(MyDuration other) {
    try{
      if(this._milliseconds < other._milliseconds){
        throw Exception("Can not be negative");
      }else{
        int res = this._milliseconds - other._milliseconds;
        return MyDuration(res);
      }
    }catch (e){
      throw e;
    }

  }


  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1>duration2); //true

  // try {
    print(duration2 - duration1); // This will throw an exception
  // } catch (e) {
  //   print(e); 
  // }
}
