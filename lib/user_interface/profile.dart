import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController tabController;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
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
      body: mainLayout(),
    );
  }

  Widget aboutUs(){
    return ListView(
      children: <Widget>[
        Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text("About us"),
          ),
        )
      ],
    );
  }

  Widget mainLayout() {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.grey[500], width: 1.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/lalit___.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              // indicator: new BubbleTabIndicator(
              //   indicatorHeight: 45.0,
              //   indicatorColor: Colors.purpleAccent,
              //   tabBarIndicatorSize: TabBarIndicatorSize.tab,
              // ),
              controller: tabController,
              indicatorColor: Colors.purpleAccent,
              labelColor: Colors.purpleAccent,
              isScrollable: true,
              unselectedLabelColor: Color(0xFFB6BDC7),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'About me',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Work with',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                  ),
                ),Tab(
                  child: Text(
                    'Contact us',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                  ),
                )
              ],
            )),
        SizedBox(height: 10.0),
        Container(
            height: MediaQuery.of(context).size.height - 450.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
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
                ),Center(
                  child: Text(
                    'Comming soon',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),Center(
                  child: Text(
                    'Comming soon',
                    style: TextStyle(fontSize: 25.0),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
