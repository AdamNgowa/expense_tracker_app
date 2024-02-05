import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

//enum keyword is basically used to create custom type in dart
enum Category {
  work,
  travel,
  leisure,
  food,
}

const categoryIcons = {
  Category.work: Icons.business_center_sharp,
  Category.food: Icons.lunch_dining_sharp,
  Category.travel: Icons.flight_takeoff_sharp,
  Category.leisure: Icons.movie_filter_sharp,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  //uuid.v4() is used to generate a unique string id
  //In dart initializer lists can be used to initialize class properties with values that  are not received as  constructor function arguments

  final String title;
  final double amount;
  final String id;
  final DateTime date;
  //Here is the the custom type we added by using enum keyword
  final Category category;

  get formattedDate {
    return formatter.format(date);
  }
}

//This code here uses a for loop to create a chart
//it first creates a final variable called expense which is derived from expenses
class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

//This adds an alternative constructor function
//This code filters the list allowing only fo the appropriate category to be selected.
  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();
//Where is used to filter lists
  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }
    return sum;
  }
}
