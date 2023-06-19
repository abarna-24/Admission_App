import 'package:flutter/material.dart';
import 'package:admission_app/navigation_pages/notification.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
 final formKey = GlobalKey<FormState>();
  final TextEditingController passController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String gender="male";
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Image.network(
             'https://static.wixstatic.com/media/6a735e_a2af08233a0d4652b194920b798a6c02~mv2.gif/v1/fill/w_800,h_600,al_c/6a735e_a2af08233a0d4652b194920b798a6c02~mv2.gif'),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 280,right: 10),
                child: Text(
                  "",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Color.fromARGB(255, 78, 146, 80)),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: 250,
                      left: 35,
                      right: 35),
                child: Form( 
                  key: formKey,
                  child: Column(
                    children: [
                      Text("\n"),
                      TextFormField(
                        decoration: InputDecoration( 
                          labelText: 'Enter Student Name'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                          else if(!RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$").hasMatch(value))
                          {
                              return "Enter valid name";
                          }
                          else{
                             return null;
                          }
                        },
                     ),
                     TextFormField(
                        decoration: InputDecoration( 
                          labelText: 'Enter Student DOB'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                          else if(!RegExp(r'^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$').hasMatch(value))
                          {
                              return "Data of Birth is not valid";
                          }
                          else{
                             return null;
                          }
                        },
                     ),
                     RadioListTile(
          title: Text("Male"),
          value: "male", 
          groupValue: gender, 
          onChanged: (value){
            setState(() {
                gender = value.toString();
            });
          },
      ),

      RadioListTile(
          title: Text("Female"),
          value: "female", 
          groupValue: gender, 
          onChanged: (value){
            setState(() {
                gender = value.toString();
            });
          },
      ),

      RadioListTile(
            title: Text("Other"),
            value: "other", 
            groupValue: gender, 
            onChanged: (value){
              setState(() {
                  gender = value.toString();
              });
            },
      ),
      
                     TextFormField(
                        decoration: InputDecoration( 
                          labelText: 'Enter Blood Group'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                          else{
                             return null;
                          }
                        },
                     ),
                     TextFormField(
                        decoration: InputDecoration( 
                          labelText: 'Enter Course Name'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                          else{
                             return null;
                          }
                        },
                     ),
                      TextFormField(
                        decoration: InputDecoration( 
                          labelText: 'Enter Student Email'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                          else if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))
                          {
                              return "Enter valid email address";
                          }
                          else{
                             return null;
                          }
                        },
                     ),
                     
                     TextFormField(
                      controller: passController,
                        decoration: InputDecoration( 
                          labelText: 'Enter Student Phone Number'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                        
                          else if(!RegExp(r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/').hasMatch(value))
                          {
                              return "Enter valid Phone number";
                          }
                          else{
                             return null;
                          }
                        },
                     ),
                     TextFormField(
                      decoration: InputDecoration( 
                          labelText: 'Enter Student Permanent Address'
                        ),
                       minLines: 6, 
                       keyboardType: TextInputType.multiline,
                       maxLines: null,
                      ),
                     Text("\n"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                      onPressed: (){
                          if(formKey.currentState!.validate()){
                             //check if form data are valid, 
                             // your process task ahed if all data are valid
                          }
                      },
                      child: Text("Send Application")
                    ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromARGB(255, 63, 132, 38),
                            child: IconButton(
                              color: Colors.white,
                              iconSize: 35,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NotificationScreen()));
                              },
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      
                    ],
                  ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}    
