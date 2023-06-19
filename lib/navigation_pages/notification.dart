import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card (
        
        margin: EdgeInsets.all(40),
        color: Color.fromARGB(255, 199, 85, 85),
        shadowColor: Color.fromRGBO(141, 141, 126, 1),
        elevation: 10,
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             Image.network('https://assets.materialup.com/uploads/39eefe46-fde2-4c1d-a31e-655349679a45/preview.gif'),
            const ListTile(
              leading: Icon (
                  Icons.message,
                  color: Colors.white,
                  size: 35
              ),
              title: Text(
                "Message from Admin!",
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              subtitle: Text('We received your admission form',
              style: TextStyle(fontSize: 12,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
