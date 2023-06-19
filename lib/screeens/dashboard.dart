import 'package:admission_app/navigation_pages/home.dart';
import 'package:admission_app/navigation_pages/notification.dart';
import 'package:admission_app/navigation_pages/profile.dart';
import 'package:admission_app/navigation_pages/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 10,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomeScreen();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 30,
                            color: currentTab == 0
                                ? Color.fromRGBO(35, 41, 122, 1)
                                : Colors.grey,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: currentTab == 0
                                  ? Color.fromRGBO(35, 41, 122, 1)
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfileScreen();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 30,
                            color: currentTab == 1
                                ? Color.fromRGBO(35, 41, 122, 1)
                                : Colors.grey,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: currentTab == 1
                                  ? Color.fromRGBO(35, 41, 122, 1)
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = SettingScreen();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.school,
                            size: 30,
                            color: currentTab == 2
                                ? Color.fromRGBO(35, 41, 122, 1)
                                : Colors.grey,
                          ),
                          Text(
                            "Admission",
                            style: TextStyle(
                              color: currentTab == 2
                                  ? Color.fromRGBO(35, 41, 122, 1)
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = NotificationScreen();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: currentTab == 3
                                ? Color.fromRGBO(35, 41, 122, 1)
                                : Colors.grey,
                          ),
                          Text(
                            "Notification",
                            style: TextStyle(
                              color: currentTab == 3
                                  ? Color.fromRGBO(35, 41, 122, 1)
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
