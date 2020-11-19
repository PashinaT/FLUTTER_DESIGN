import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'part2.dart';
import 'part1.dart';

class Part1 extends StatelessWidget {
  const Part1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                      Color.fromRGBO(162, 123, 255, 1),
                      Color.fromRGBO(113, 142, 255, 1),
                    ])),
                child: ListView(children: <Widget>[
                  getSearchBar(),
                  Padding(
                    padding: EdgeInsets.only(left: 22.0, top: 20.0),
                    child: Text("Sodexo",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30.0)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 22.0, top: 10.0),
                      child: Text(
                          "Hey Alex, what would you like to \nlearn today?",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0))),
                  Container(
                      padding: EdgeInsets.only(top: 20.0, left: 22.0),
                      height: 50,
                      child: Row(children: <Widget>[
                        getButton("French", 70),
                        Padding(padding: EdgeInsets.only(left: 10.0)),
                        getButton("Module", 70),
                        Padding(padding: EdgeInsets.only(left: 10.0)),
                        getButton("Ui design", 90),
                        Padding(padding: EdgeInsets.only(left: 10.0)),
                        getButton("Photoshop", 100)
                      ])),
                  Padding(padding: EdgeInsets.only(top: 30.0)),
                  Container(
                    height: 320,
                    color: Colors.white,
                    child: ListView(
                      children: <Widget>[
                        Row(
                          children: [
                            Text("Formations Recommandees",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20.0)),
                            Padding(
                              child: Text("View all -->",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 14.0)),
                              padding: EdgeInsets.only(left: 80.0),
                            )
                          ],
                        ),
                        // Row(
                        //   children: <Widget>[
                        //     infoCard()
                        //   ] ,
                        // ),
                        infoCard(),
                        Row(
                          children: [
                            Text("Mes Contenus StratX",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20.0)),
                            Padding(
                              child: Text("View all -->",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 14.0)),
                              padding: EdgeInsets.only(left: 140.0),
                            )
                          ],
                        ),
                        infoCard()
                      ],
                    ),
                  ),
                  getBBar(1, context),
                ]))));
  }

  Widget getButton(String name, double width) {
    return Container(
      width: width,
      child: OutlineButton(
        padding: EdgeInsets.only(left: 10.0),
        child: Center(
            child: Container(
                child: Row(children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 1.0)),
          Text(name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontFamily: '',
              ))
        ]))),
        onPressed: () {
          // Navigate to second route when tapped.
        },
        borderSide: BorderSide(width: 2, color: Colors.white),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(3.0)),
      ),
    );
  }

  Widget getBBar(int activeIcon, BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        new IconButton(
          icon: new Icon(Icons.home, color: Color.fromRGBO(162, 123, 255, 1)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Part1()));
          },
        ),
        new IconButton(
          icon: new Icon(
            Icons.search,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Part2()));
          },
        ),
        const Icon(
          Icons.calendar_today,
          color: Colors.grey,
        ),
        const Icon(
          Icons.message,
          color: Colors.grey,
        ),
        const Icon(
          Icons.account_circle,
          color: Colors.grey,
        ),
      ]),
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      height: 50.0,
    );
  }

  Widget getCheckBox(String name, bool val) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, top: 0.0),
        child: Row(children: [
          Container(
              height: 30,
              child: Theme(
                child: Checkbox(
                  value: val,
                  onChanged: (val) {},
                ),
                data: ThemeData(
                  unselectedWidgetColor: Colors.white,
                  // color
                ),
              )),
          Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
        ]));
  }

  Widget infoCard() {
    return Container(
      child: Row(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(20),
            child: Container(
                width: 200.0,
                height: 235.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                        offset: Offset(-5, 5),
                      )
                    ] //boxShadow

                    ),
              child: ListView(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:  Image.asset(
                      'assets/1.png',width: 160.0, height: 160.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                  child:Text("Enhance Your Brand Potential With Giant",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 16.0),
                  ),
                  ),

                  Row(children:<Widget>[
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Padding(
                        padding: EdgeInsets.only(left:40.0),
                      child: Icon(Icons.bookmark_border)
                    )
                  ])
                ],
              ),
            ) //BoxDecoration) ,
            ),
        // Container(
        //   width:70
        // ),
        Padding(
            padding: EdgeInsets.all(20),
            child: Container(
                width: 130.0,
                height: 220.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5.0,
                        spreadRadius: 3.0,
                        offset: Offset(-5, 5),
                      )
                    ] //boxShadow

                    )) //BoxDecoration) ,
            )
      ]),
    );
  }

  Widget getSearchBar() {
    return Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF2F2F2),
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(30),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.white),
              borderRadius: new BorderRadius.circular(30),
            ),
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: 'Search',
            hintStyle: TextStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                color: Color(0xFFB3B1B1)),
          ),
        ));
  }
}
