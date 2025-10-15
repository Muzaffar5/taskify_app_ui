import 'dart:math';

import 'package:flutter/material.dart';
import 'package:taskify_app_ui/pages/add_task.dart';
import 'package:taskify_app_ui/pages/login.dart';
import 'package:taskify_app_ui/pages/settings.dart';
import 'package:taskify_app_ui/pages/tasks.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // Dashboard Text 
      appBar: AppBar(
        title: Center( child: 
         Text('Dashboard',style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25), )),
        backgroundColor: Colors.blue,
      // NOTIFICARION BUTTON
        actions:[
           IconButton( icon: Icon(Icons.notifications, color: Colors.white,), onPressed: () => {},),],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      
    // Drawer set
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader( decoration: BoxDecoration(color: Colors.blue), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
            // Person Avatar & User Name & Email
              children: [
                CircleAvatar( 
                  radius: 30, 
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.blue,),),
                  SizedBox(height: 10,),
                Text('M.Muzaffar',style: TextStyle(
                  color: Colors.white, fontSize: 18, 
                  fontWeight: FontWeight.bold),),
                Text('muzaffarzaman211@gmail.com',style: TextStyle(
                  fontSize: 12, color: Colors.white,
                ),),
            ]),
          ),

        // Home page button (drawer)
          ListTile(onTap: () {
            Navigator.pop(context,PageRouteBuilder);
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),

        // Task page Button(Drawer)
          ListTile(onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Tasks()));
            },
            leading: Icon(Icons.task),
            title: Text('Task'),
          ),

        // Settings Page Button(Drawer)
          ListTile(onTap: () {
            Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> settings()));
            },
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),

          Divider(),

        // logout button (Drawer)
          ListTile(onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Login(),));
            },
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          )
        ],)
          
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 15),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // Quick Action Text
          children: [
            SizedBox(height: 10,),
          Text('Quick Actions' , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SizedBox(height: 100,),

          // Add Task button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton.icon(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AddTask()));
              },  
                icon: Icon(Icons.add ),
                label: Text('Add Task'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(130, 40),
                  backgroundColor: Colors.blue, 
                  foregroundColor: Colors.white, minimumSize: Size(40, 50)),),
            ),

          // calendar button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton.icon(onPressed: (){},  
                icon: Icon(Icons.calendar_month ),
                label: Text('calendar'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(130, 40),
                  backgroundColor: Colors.blue, 
                  foregroundColor: Colors.white, minimumSize: Size(40, 50)),),
            ),

          // priorty button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton.icon(onPressed: (){},  
                icon: Icon(Icons.star),
                label: Text('Priority'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(130, 40),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white, minimumSize: Size(40, 50)),),
            ),
          ],),
          
          Divider(),

        // Recent Task Text
          SizedBox(height: 10,),
          Text('Recent Tasks', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),

        // Recent Task button
          Card(
            elevation: sqrt1_2,
              child: ListTile(
              leading: Icon(Icons.task, color: Colors.blue,),
              trailing: Icon(Icons.chevron_right),
              title: Text('Complete FYP perposal'),
              subtitle: Text('Due: 1 November'),
              onTap:  () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Tasks()));

              },
            ),
          )

        ],),
      )
    );
  }
}