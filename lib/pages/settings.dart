import 'package:flutter/material.dart';
import 'package:taskify_app_ui/pages/login.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Settings', 
          style: TextStyle(color: Colors.white, fontSize: 25),)),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
          icon: Icon(Icons.arrow_back, size: 25, color: Colors.white,),), 
        backgroundColor: Colors.blue,
      ),
      body: ListView(children: [
        Column(children: [

        // Profile Button (Settings)
          ListTile(onTap: (){}, 
          leading: Icon(Icons.person),
          title: Text('Profile'),
          trailing: Icon(Icons.chevron_right),),

        // Notification Button (Settings)
          ListTile(onTap: (){}, 
          leading: Icon(Icons.notifications),
          title: Text('Notification'),
          trailing: Icon(Icons.chevron_right),),

        // Theme Button (Setings)
          ListTile(onTap: (){}, 
          leading: Icon(Icons.color_lens),
          title: Text('Theme'),
          trailing: Icon(Icons.chevron_right),),

        // Help & Support Button (Setting)
        ListTile(onTap: (){
        }, 
          leading: Icon(Icons.help),
          title: Text('Help & Support'),
          trailing: Icon(Icons.chevron_right),),

          Divider(),

        // LogOut Button (Settings)
          ListTile(onTap: (){
            Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context)=>Login()));
          }, 
          leading: Icon(Icons.logout,color: Colors.red,),
          title: Text('Logout',style: TextStyle(color: Colors.red),),
          trailing: Icon(Icons.chevron_right),),
        ],)
      ],),
      
    );
  }
}