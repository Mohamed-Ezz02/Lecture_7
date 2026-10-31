// Q2
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name: $name, Salary: \$${salary.toStringAsFixed(2)}');
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Programming Language: $programmingLanguage');
  }
}

class Designer extends Employee {
  String designTool;

  Designer(String name, double salary, this.designTool)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Design Tool: $designTool');
  }
}

void main() {
  Developer dev = Developer("Ahmed", 1200.0, "Dart & Flutter");
  Designer designer = Designer("Sara", 1000.0, "Figma");

  print('--- Developer Info ---');
  dev.displayInfo();
  
  print('\n--- Designer Info ---');
  designer.displayInfo();
}

