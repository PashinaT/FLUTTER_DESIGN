import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'part1.dart';

class Part2 extends StatelessWidget {
  const Part2({Key key}) : super(key: key);

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
          padding: EdgeInsets.only(left: 22.0, top: 10.0),
          child: Text("Languages",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0)),
        ),
        Padding(padding: EdgeInsets.only(top: 10.0)),
        getCheckBox('English',false),
        getCheckBox('French',false),
        getCheckBox('German',false),
        getCheckBox('Dutch',false),
        Padding(
            padding: EdgeInsets.only(left: 22.0, right: 22, top: 10.0),
            child: Divider(color: Colors.black)),
        Padding(
          padding: EdgeInsets.only(left: 22.0, top: 10.0),
          child: Text("Types",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0)),
        ),
        Padding(padding: EdgeInsets.only(top: 10.0)),
        getCheckBox('Digital Learning',true),
        getCheckBox('Blended Learning',true),
        getCheckBox('E-book',false),
        Padding(
            padding: EdgeInsets.only(left: 22.0, right: 22, top: 10.0),
            child: Divider(color: Colors.black)),
        Padding(
          padding: EdgeInsets.only(left: 22.0, top: 20.0),
          child: Text("Ratings",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0)),
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 35.0, right: 0, top: 10.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ))),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 1.0, right: 35, top: 10.0),
                    child: Divider(
                      color: Colors.white,
                      thickness: 3,
                    )))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("1", style: TextStyle(color: Colors.white)),
            Text("2", style: TextStyle(color: Colors.white)),
            Text("3", style: TextStyle(color: Colors.white)),
            Text("4", style: TextStyle(color: Colors.white)),
            Text("5", style: TextStyle(color: Colors.white)),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 80.0)),
        getBBar(2,context),
      ]),
    )));
  }

  Widget getBBar(int activeIcon,BuildContext context){

    return Container(child:
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        new IconButton(
          icon: new Icon(Icons.home, color: Colors.grey),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Part1()));
          },
        ),
        new IconButton(
          icon: new Icon(
            Icons.search,
            color: Color.fromRGBO(162, 123, 255, 1),
          ),
          onPressed: () {},
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
