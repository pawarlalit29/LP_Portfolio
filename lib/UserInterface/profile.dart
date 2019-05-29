import 'package:flutter/material.dart';

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
    tabController = TabController(vsync: this, length: 2);
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
                      image: DecorationImage(
                          image: NetworkImage(
                              'http://rx.iscdn.net/2015/06/101041_carroczen-highpointmx201_164cf.jpg?auto=format&q=90&w=1300&h=685&fit=crop&crop=faces'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.purpleAccent,
              isScrollable: true,
              unselectedLabelColor: Color(0xFFB6BDC7),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Info',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Education',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                  ),
                ),
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
                )
              ],
            ))
      ],
    );
  }
}
