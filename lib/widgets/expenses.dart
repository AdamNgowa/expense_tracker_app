import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 20.99,
      date: DateTime.now(),
      category: Category.food,
    )
  ];
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('chart'),
      ],
    );
  }
}
