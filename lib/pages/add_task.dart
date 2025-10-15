import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskify_app_ui/pages/dashboard.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
  
}

class _AddTaskState extends State<AddTask> {
  final _formkey = GlobalKey<FormState>();
  final _titlecontrollor = TextEditingController();
  final _descriptioncontrollor = TextEditingController();
  final _datecontroller = TextEditingController();
  String _selectedPriority = 'Medium'; // default show
  
 // final List<String> _priorities = ['Hight','Medium', 'Low'];
  DateTime? _selectdate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('Add New Task', style: 
            TextStyle(color: Colors.white, fontSize: 25),),
        ),
        leading: IconButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> Dashboard()));
        }, icon: 
          Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
        actions: [IconButton(onPressed: (){
        }, icon: Icon(Icons.save,color: Colors.white,))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formkey,
          child: ListView(children: [

          // Title Text Field
            TextField(
             controller: _titlecontrollor,
              decoration: InputDecoration(
                labelText: 'Task Title',
                prefixIcon: Icon(Icons.title_rounded,),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.grey.shade800,),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500),
                ),
              ),
            ),
          
            SizedBox(height: 15,),

           // Description text Field
            TextField(
              controller: _descriptioncontrollor,
              decoration: InputDecoration(
                labelText: "Description",
                prefixIcon: Icon(Icons.description),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.grey.shade800,),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500)
                )
              ),
              maxLines: 3,
            ),

            SizedBox(height:15),

            // priority Drop Down Button
            DropdownButtonFormField<String>(
              value: _selectedPriority, 
            decoration: InputDecoration(
              labelText: 'Priority',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade800)
              ),
              prefixIcon: Icon(Icons.flag),
            ),
            //items:  _priorities.map((String priority){
              items: [

                 DropdownMenuItem(
                  value: 'high',
                  child: Row(children: [
                    Icon(Icons.flag, color: Colors.red,),
                    Text(' High',),
                  ],),
                ),

                DropdownMenuItem(
                  value: 'Medium',
                  child: Row(children: [
                    Icon(Icons.flag, color: Colors.green,),
                    Text(' Medium',),
                  ],),
                ),

                DropdownMenuItem(
                  value: 'Low',
                  child: Row(children: [
                    Icon(Icons.flag, color: Colors.yellow,),
                    Text(' Low',),
                  ],),
                ),
              ],
          
            onChanged: (newValue) {
              setState(() {
                _selectedPriority = newValue!;
              });
              } ,),
            SizedBox(height: 15,),
            
          // Select Date Feild
            InkWell(
              onTap: ()async{
                DateTime? picked = await showDatePicker(
                  context: context, 
                  firstDate:DateTime.now(),
                  lastDate: DateTime(2100),
               );
               if (picked != null && picked != _selectdate) {
                 setState(() {
                   _selectdate = picked;
                 });
               };
              },
              child:InputDecorator(
                decoration: InputDecoration(
                hintText: 'Select Date',
                prefixIcon: Icon(Icons.calendar_today),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade800)
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade800)
                ),
                ),
                child: Text('Select Date'),
              )
            ),
          ]),
        ),
      ),

    );
  }
}