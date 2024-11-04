import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
final formatter = DateFormat.yMd(); // yMd is a constructor function
//yMd creates a formatter object which can be used to format dates

const uuid = Uuid(); // to generate unique IDs
enum Category{food,travel,leisure,work} // Custom type Category having 4 allowed values
//enum allows us to create a custom type
// combination of predefined allowed values
const categoryIcons = {
  Category.food:Icons.lunch_dining,
  Category.travel:Icons.flight_takeoff,
  Category.leisure:Icons.movie,
  Category.work:Icons.work,
};
class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category
  }): id = uuid.v4(); // assign an initial value to id when a new object is created
// we can add initializer list after colon
  // to initialise class properties (like "id") with values
  // with values that are NOT received as constructor function arguments
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; // custom type category
  //getters are basically "computed properties" =>
  //properties that are dynamically derived, based on other class properties
  String get formattedDate{
    return formatter.format(date);
  }
}
