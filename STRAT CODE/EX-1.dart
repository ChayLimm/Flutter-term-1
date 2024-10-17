import 'dart:async';
import 'dart:collection';
import 'dart:math';
import 'dart:mirrors';

Map<Skill,double> skillSalary ={
  Skill.FLUTTER : 5000,
  Skill.DART : 3000,
  Skill.OTHER : 1000,
};

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
  double _yearsOfExperience;

  String get getName=> _name;
  double get getBaseSalary=> _baseSalary;
  List<Skill> get getSkills=> _skills;
  Address get getAddress=> _address;
  double get getYearsOfExperience=> _yearsOfExperience;


  Employee(this._name, this._baseSalary,this._skills,this._address,this._yearsOfExperience);
  Employee.mobileDeveloper(this._name, this._baseSalary,this._address,this._yearsOfExperience){ 
    if(_skills.isEmpty){
      _skills.add(Skill.DART);
      _skills.add(Skill.FLUTTER);
      }
  }

  void printDetails() {
    print('Employee: $getName, Base Salary: \$$getBaseSalary');
    print(getSkills);
  }

  void computeSalary(){
    const double baseSalary = 40000;
    const double eachYearEperienceAdd = 2000;
    const double flutterBonus = 5000;
    const double dartBonus = 3000;
    const double otherBonus = 1000;

    double yearOfEperience = getYearsOfExperience;
    
    List<Skill> skillData = getSkills;
  
    double total = 0;

    // for(var skill in skillData){
    //   if(skill == Skill.values){
    //     double salary = skillSalary[skill] ?? 0;
    //     total = total + (salary*yearOfEperience);
    //   }
    // }

//print salary base on the key skillSalary[Skill.FLUTTER]
     
    for(var skill in skillData){
      if(skillSalary.containsKey(skill)){
        total = total + skillSalary[skill]! ;
      }
    }
    total = total + (yearOfEperience * 2000);

    print(total);
  }

}

void main() {
  var empAdd1 = Address("str32", "PhnomPenh", 12036) ;
  var emp1 = Employee.mobileDeveloper("Sokchea",40000, empAdd1,3 );
  emp1.printDetails();
  emp1.computeSalary();

  List<Skill> skills= [];
  skills.add(Skill.DART);

  var empAdd2 = Address("str32", "PhnomPenh", 12036) ;
  var emp2 = Employee("Sokchea",40000,skills, empAdd2,3 );
  emp2.printDetails();
  emp2.computeSalary();


}