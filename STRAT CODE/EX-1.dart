import 'dart:collection';
import 'dart:math';

enum Skill { FLUTTER, DART, OTHER }

class Address{
  String street, city;
  int zipCode;
  Address(this.street,this.city,this.zipCode);
}

class Employee {
  String _name;
  double _baseSalary;
  List<Skill> _skills = [];
  Address _address;
  int _yearsOfExperience;

  String get getName=> _name;
  double get getBaseSalary=> _baseSalary;
  List<Skill> get getSkills=> _skills;
  Address get getAddress=> _address;
  int get getYearsOfExperience=> _yearsOfExperience;


  Employee(this._name, this._baseSalary,this._skills,this._address,this._yearsOfExperience);
  Employee.mobileDeveloper(this._name, this._baseSalary,this._skills,this._address,this._yearsOfExperience){ 
    if(_skills.isEmpty){
      _skills.add(Skill.DART);
      _skills.add(Skill.FLUTTER);
      }
  }

  void printDetails() {
    print('Employee: $getName, Base Salary: \$$getBaseSalary');
  }

  void computeSalary(){
    const double baseSalary = 40000;
    const double eachYearEperienceAdd = 2000;
    const double flutterBonus = 5000;
    const double dartBonus = 3000;
    const double otherBonus = 1000;

    int yearOfEperience = getYearsOfExperience;
    double flutterSalary = flutterBonus * yearOfEperience;
    double dartSalary = dartBonus * yearOfEperience;
    double otherSalary = otherBonus * yearOfEperience;

    
  

  }

}

void main() {
  var emp1 = Employee('Sokea', 40000);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 45000);
  emp2.printDetails();
}