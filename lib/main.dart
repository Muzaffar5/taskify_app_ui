import 'package:flutter/material.dart';
import 'package:taskify_app_ui/pages/add_task.dart';
import 'package:taskify_app_ui/pages/login.dart';


void main() {
runApp(taskify());
}

// ignore: camel_case_types
class taskify extends StatelessWidget {
  const taskify({super.key}); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
}