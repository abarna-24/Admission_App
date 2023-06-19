import 'package:admission_app/screeens/drawer.dart';
import 'package:admission_app/screeens/slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 41, 122, 1),
        // title: Align(
        //     alignment: Alignment.center,
        //     child: Text(
        //       "Home",
        //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        //     )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            constraints: BoxConstraints.expand(height: 225),
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ImageSlider(),
            // child: imageSlider(context),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Gallery\n",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
          ),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKgaqnCo5SkbvaP3CjfCO8Y0hxO0NwQ9wKMOXVguyeAT7T9Re_qQrFb5p3XOJxX28Cy8&usqp=CAU'),
        ],
      ),
    );
  }
}
