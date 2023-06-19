import 'package:admission_app/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Color.fromRGBO(188, 212, 230, 1),
            Color.fromRGBO(35, 41, 122, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.25,
                      left: 35,
                      right: 35),
                child: Form( 
                  key: formKey,
                  child: Column(
                    children: [
                      Text("\n"),
                      TextFormField(
                        decoration: InputDecoration( 
                          labelText: 'Enter User Name'
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
                          labelText: 'Enter User Email'
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
                          labelText: 'Enter User Password'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                        
                          else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))
                          {
                              return "Enter valid password";
                          }
                          else{
                             return null;
                          }
                        },
                     ),
                     
                      TextFormField(
                        decoration: InputDecoration( 
                          labelText: 'Enter Confirm Password'
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                              return "field should not be empty";
                          }
                          else if(value!=passController.text)
                          {
                              return "Password should be equal";
                          }
                          else{
                             return null;
                          }
                        },
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
                      child: Text("Register")
                    ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              iconSize: 35,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPge()));
                              },
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPge()));
                            },
                            child: Text(
                              'Back to Login Page',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ],
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
