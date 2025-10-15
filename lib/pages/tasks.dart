import 'package:flutter/material.dart';
import 'package:taskify_app_ui/pages/dashboard.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar MyTasks text
      appBar: AppBar(
        title: Center(child: Text('My Tasks', 
          style: TextStyle(color: Colors.white,fontSize: 25),)),
      // icon for back & navigation to home page
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
        }, 
        icon: Icon(Icons.arrow_back_rounded,
          color: Colors.white, size: 25,)),
          backgroundColor: Colors.blue,
      ),
      
    // Assigned Tasks
     body: ListView(children: [
      buildtaskfield('FYP Perposal', 'Hight priority', Icons.flag_circle, Colors.red),
      buildtaskfield('CN lecture', 'Low priority', Icons.flag_circle, Colors.yellow),
      buildtaskfield('meeting', 'medium priority', Icons.flag_circle, Colors.green),
      buildtaskfield('Tomorow Office', 'Hight priority', Icons.flag_circle, Colors.red),
      buildtaskfield('Home', 'Low priority', Icons.flag_circle, Colors.yellow),
      buildtaskfield('office project', 'Hight priority', Icons.flag_circle, Colors.red),
      buildtaskfield('flutter Next Lecture ', 'Medium priority', Icons.flag_circle, Colors.green),
      buildtaskfield('Github Learning', 'Medium priority', Icons.flag_circle, Colors.green),
      buildtaskfield('set project files', 'Low priority', Icons.flag_circle, Colors.yellow),
     ],),
    );
  }
}

// Customize widget for displayinng Tasks
Widget buildtaskfield(String title, String Priority, IconData icon, Color color){
  return Card(
    margin: EdgeInsets.all(10),
    child: ListTile(
      onTap: () {
        
      },
      leading: Icon(icon, color: color),
      title: Text(title),
      subtitle: Text(Priority),
      trailing: Icon(Icons.edit, ),
  ),);
  
}