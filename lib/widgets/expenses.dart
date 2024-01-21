import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Smocha',
      amount: 20.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Batman',
      amount: 10.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Expense app',
      amount: 20.99,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('chart'),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        ),
      ],
    );
  }
}
