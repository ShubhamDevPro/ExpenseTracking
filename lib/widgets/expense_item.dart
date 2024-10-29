import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';
class ExpenseItem extends StatelessWidget{
  const ExpenseItem(this.expense,{super.key});
  final Expense expense;
  @override
  Widget build(BuildContext context){
    return Card(child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16
        ),
      child: Column(
        children: [
          Text(expense.title),
          const SizedBox(height:4),
          Row(
            children: [
              Text('₹${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),// takes all the space b/w two widgets
              Row(children: [
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 8,),
                Text(expense.formattedDate),
              ],),
            ],
          )
        ],
      ),
      ),
    ); // Card is used for styling purpose.
    // Puts content into a container which is elevated and has slight shadow behind itself to make it stand out
    // Card also automatically adds some top and bottom margin so that we have some spacing b/w items
  }
}