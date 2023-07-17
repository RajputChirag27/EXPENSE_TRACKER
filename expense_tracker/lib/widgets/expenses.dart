import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(title: "Lunch", amount: 80.0, date: DateTime.now() , category: Category.food),
    Expense(title: "Course", amount: 189.99, date: DateTime.now() , category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const Text("Chart"),
          ExpensesList(expenses: _registeredExpenses),
        ],
      ),
    );
  }
}