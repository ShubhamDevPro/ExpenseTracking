import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({super.key,required this.expenses});
  // stateless widget bcz we wont manage the list
  // we will just output using this class
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length,itemBuilder:(ctx,index) =>ExpenseItem(expenses[index]));
    //itemCount defines how many list items will be rendered
       // ListView(children: [],) will create all item when this list is displayed on screen
    //using builder bcz it will build, create those list items only when they are visible or about to become visible
  // builder takes an itemBuilder parameter which is of type function
    // we can pass functions as values for parameter
    // it wants a function that will get two input values those that will be provided automatically by flutter
    // one context object and an index object automatically provided by flutter
    // then it should return a widget

  }
}