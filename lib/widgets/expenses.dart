import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
class Expenses extends StatefulWidget{
  const Expenses({super.key}); // Constructor Function
  @override
  State<StatefulWidget>createState(){
    return _ExpensesState();
  }
}
class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter Course', amount: 19.99, date: DateTime.now(), category: Category.work)
  ,
  Expense(title: 'Cinema', amount: 15, date: DateTime.now(), category: Category.leisure),];
  // creating a list of custom type Expense (information about objects)
  // when we create a class , we also get a type of same name
  void _openAddExpenseOverlay(){
    showModalBottomSheet( // dynamically adds a new UI element when executed
        context: context,//globally available context object
        // when we are in a class that extends state then
        //flutter automatically adds a context property to your class behind the scenes
        //i.e. its provided by the State parent class (State<Expenses>)
        // this context can be used as a value for this context arguement in showModalBS()

        //Context is full of metadata managed by Flutter that belongs to a
        // specific widget. It also contains info on
        //Widget's position in the overall widget tree
        //Every widget has its own context object
        builder: (ctx) =>const NewExpense()
        //ctx is a parameter to function
        //the context obj. for the "modal element" thats created by flutter is passed to ctx
        // its different from context of "expenses widget" that was passed earlier

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Expense Tracker"),
        actions: [IconButton(onPressed: _openAddExpenseOverlay, // assigning _openAddEO function as value to onPressed
            icon:const Icon(Icons.add))],),
      body:Column(
      children: [
        const Text('The Chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses),),
      ],
    ),); // Scaffold does base style setup work and sets background color to white
  }
}