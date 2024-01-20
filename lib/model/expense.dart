import 'package:uuid/uuid.dart';

const uuid = Uuid();

//enum keyword is basically used to create custom type in dart
enum Category {
  work,
  travel,
  leisure,
  food,
}

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  //uuid.v4() is uesed to generate a unique string id
  //In dart initializer lists can be used to initialize class properties with values that  are not received as  constructor function arguments

  final String title;
  final double amount;
  final String id;
  final DateTime date;
  //Here is the the custom type we added by using enum keyword
  final Category category;
}
