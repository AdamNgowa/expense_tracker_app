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
  //uuid.v4() is uesed to generate a unique string id
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
