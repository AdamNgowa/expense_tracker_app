import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onremoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onremoveExpense;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (ctx, index) => Dismissible(
              background: Container(
                color: Theme.of(context).colorScheme.error.withOpacity(0.8),
                margin: const EdgeInsets.symmetric(horizontal: 2),
              ),
              key: ValueKey(expenses[index]),
              onDismissed: (direction) {
                onremoveExpense(expenses[index]);
              },
              child: ExpenseItem(expense: expenses[index]),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              'by Adam Ngowa',
              style: GoogleFonts.poppins(),
            ),
          ),
        )
      ],
    );
  }
}
