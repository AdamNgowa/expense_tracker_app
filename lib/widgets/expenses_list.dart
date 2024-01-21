import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    required this.expenses,
    super.key,
  });
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    //ListView.buider creates scrollable lists and only builds items when they are about to be seen.
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Text(expenses[index].title),
    );
  }
}
