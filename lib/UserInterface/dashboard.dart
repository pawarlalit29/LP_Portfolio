import 'package:flutter/material.dart';
import 'package:lp_portfolio/UserInterface/profile.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Dashboard();
  }
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      body: mainLayout(context),
    );
  }

  Widget mainLayout(BuildContext buildContext) {
    var index = 200;
    return Stack(alignment: Alignment.topLeft, children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 160.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'http://rx.iscdn.net/2015/06/101041_carroczen-highpointmx201_164cf.jpg?auto=format&q=90&w=1300&h=685&fit=crop&crop=faces'),
                  fit: BoxFit.cover)),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 25.0, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Text Title',
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: 'Montserrat',
                    color: Colors.purpleAccent),
              ),
              Text(
                'Text subtitle',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                    color: Colors.purpleAccent[index]),
              ),
            ],
          )),
      childOne(context)
    ]);
  }

  Widget childOne(BuildContext context) {
    void onClickContact() {
      setState(() {
        print('profile');
        Navigator.push(
        context,
        new MaterialPageRoute(builder: (ctxt) => new Profile()),
      );
      });
    }

    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 60.0,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: const Color(0xFF808080).withOpacity(0.45),
            ),
            child: Center(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: Align(
                  alignment: Alignment.center,
                  child: new InkWell(
                    onTap: () {
                      onClickContact();
                    },
                    child: Text(
                      'Profile',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                )),
                Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: new InkWell(
                          onTap: () {
                            onClickContact();
                          },
                          child: Text(
                            'Contact us',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ))),
                Expanded(
                    child: Align(
                  alignment: Alignment.center,
                  child: new InkWell(
                      onTap: () {
                        onClickContact();
                      },
                      child: Text(
                        'Text',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      )),
                ))
              ],
            ))));
  }
}
