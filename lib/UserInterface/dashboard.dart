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

  void onClickContact() {
      setState(() {
        print('profile');
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (ctxt) => new Profile()),
        );
      });
    }

  Widget mainLayout(BuildContext buildContext) {
    var index = 200;
    return Stack(alignment: Alignment.topLeft, children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/lalit___.jpg'),
                  fit: BoxFit.cover)),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 25.0, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Lalit Pawar',
                style: TextStyle(
                    fontSize: 45.0,
                    fontFamily: 'Rubik-Medium',
                    color: Colors.purpleAccent),
              ),
              Text(
                'Mobile Developer',
                style: TextStyle(
                    fontFamily: 'Rubik-Regular',
                    fontSize: 20.0,
                    color: Colors.black),
              ),
              Text(
                'Mumbai, India',
                style: TextStyle(
                    fontFamily: 'Rubik-Regular',
                    fontSize: 15.0,
                    color: Colors.grey[500]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Center(
                  child : InkWell(
                      onTap: (){onClickContact();},
                      child:  Container(
                        width: 200.0,
                        height: 50.0,
                        decoration:  BoxDecoration(
                          color: Colors.purpleAccent,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          borderRadius:  BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 4.0),
                          child :Center(
                          child:  Text(
                            'Portfolio',
                            style:  TextStyle(
                                fontSize: 18.0, color: Colors.white),
                          ),
                        ),)
                      ),
                    ),
                    
                  
                ),
              )
            ],
          )),
    ]);
  }

  Widget childOne(BuildContext context) {
    

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
