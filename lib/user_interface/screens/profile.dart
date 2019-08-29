import 'package:lp_portfolio/user_interface/widget/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController tabController;
  int currentIndex = 0;
  int _counter = 0;
  String appBarTitleText = "Profile";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  final List<String> _title = ["About me","Work with","Projects","Contact us"];

  final List<Widget> _children = [
    Center(
        child: Text(
      'Comming soon',
      style: TextStyle(fontSize: 25.0),
    )),
    Center(
      child: Text(
        'Comming soon',
        style: TextStyle(fontSize: 25.0),
      ),
    ),
    Center(
      child: Text(
        'Comming soon',
        style: TextStyle(fontSize: 25.0),
      ),
    ),
    Center(
      child: Text(
        'Comming soon',
        style: TextStyle(fontSize: 25.0),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            appBarTitleText,
            style:
                TextStyle(fontFamily: 'Montserrat', color: Colors.purpleAccent),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.purpleAccent,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: _children[currentIndex],
        bottomNavigationBar: BottomNavyBar(
            selectedIndex: currentIndex,
            showElevation: false,
            onItemSelected: (index) => setState(() {
                  currentIndex = index;
                  appBarTitleText = _title[currentIndex];
                }),
            items: [
              BottomNavyBarItem(
                  icon: Icon(Icons.person),
                  title: Text('About me'),
                  activeColor: Colors.purpleAccent,
                  inactiveColor: Colors.grey[500]),
              BottomNavyBarItem(
                  icon: Icon(Icons.work),
                  title: Text('Work with'),
                  activeColor: Colors.purpleAccent,
                  inactiveColor: Colors.grey[500]),
              BottomNavyBarItem(
                  icon: Icon(Icons.message),
                  title: Text('Projects'),
                  activeColor: Colors.purpleAccent,
                  inactiveColor: Colors.grey[500]),
              BottomNavyBarItem(
                  icon: Icon(Icons.contact_phone),
                  title: Text('Contact us'),
                  activeColor: Colors.purpleAccent,
                  inactiveColor: Colors.grey[500]),
            ]));
  }
}
