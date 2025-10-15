import 'package:flutter/material.dart';
import 'package:taskify_app_ui/pages/dashboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: EdgeInsets.symmetric(horizontal: 30,),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             SizedBox(height: 50,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               
               //logo & Random Company text
               children: [ Image(
                 image: AssetImage('images/task_logo copy.png',),height: 100, width: 150,),
               Text('TASKIFY',style: 
                 TextStyle(fontSize: 30,  fontWeight: FontWeight.bold,color: Colors.blue.shade600),),
             ],),
         
           // LOGIN text on front
             SizedBox(height: 60,),
             Text('LOGIN',style:
               TextStyle(fontSize: 40, 
               fontWeight: FontWeight.bold, color: Colors.blue.shade600),),
             Text('This is the random company login page. \nthis the practice of login page.', 
               textAlign: TextAlign.center,style: TextStyle(color: Colors.blueGrey.shade900),),
         
           // Email Textformfield
             SizedBox(height: 40,),
             TextField(
               decoration: InputDecoration(
                 labelText: 'Email',
                 labelStyle: TextStyle(color: Colors.blueGrey.shade700),
                 prefixIcon: Icon(Icons.email),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.blueGrey),
                   borderRadius: BorderRadius.circular(10,)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.blueGrey,),
                 )
               )
             ),
         
           // Password Textformfield
             SizedBox(height: 30,),
             TextField(
              obscureText: true,
               decoration: InputDecoration(
                 labelText: 'Password', 
                 labelStyle: TextStyle(color: Colors.blueGrey.shade700),
                 prefixIcon: Icon(Icons.lock_open),
                 suffixIcon: Icon(Icons.visibility_off),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.blueGrey),
                   borderRadius: BorderRadius.circular(10,)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.blueGrey,),
                 )
               )
             ),
       
           //Forget password text (pressable)
             SizedBox(height: 5.0,),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 InkWell(
                   onTap: (){
                   },
                   child: Text('Forget Password',
                   style: TextStyle(
                     fontSize: 12,
                     color: Colors.blueGrey.shade600,
                     fontWeight: FontWeight.bold
                   ),),
                 ),
               ],),
       
           // login Button ( Elevated button)
             SizedBox(height: 40,),  
             Row( mainAxisAlignment: MainAxisAlignment.center, 
             children: [
               ElevatedButton(onPressed: (){
                Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context)=> Dashboard(),),);
               },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade600, minimumSize: Size(150, 45) ), 
                child: Text('Login', style: 
                 TextStyle(color: Colors.white, fontSize:18 ),),
                 
               ),
             ],),
       
           // Don't have an account & sign in(pressable)
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Text("Don't have an account? ",style: TextStyle(color: Colors.blueGrey.shade800),),
                 InkWell(
               onTap:() { print('signin pressable (ripple affact)'); },
               child: Text('sign in',style: TextStyle(color: Colors.blueGrey.shade700,fontWeight: FontWeight.bold),),  
               ),
             ],),
         ],)  
        ),
       );
  }
}
