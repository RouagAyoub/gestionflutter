import 'package:flutter/material.dart';
import 'package:gestion/login/login.dart';
import 'package:gestion/rdv/rdvpage.dart';

class Sidebare extends StatefulWidget {
  Sidebare({Key? key}) : super(key: key);

  @override
  _SidebareState createState() => _SidebareState();
}

class _SidebareState extends State<Sidebare> {
  Widget pageselected = Rdvpage();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: size.width * 0.035,
            color: Color(0xFF21183F),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              pageselected = Rdvpage();
                            });
                          },
                          icon: Icon(Icons.access_time_filled_rounded),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(Icons.shopping_cart),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(Icons.person_add),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(Icons.add_chart_sharp),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              pageselected = LoginPage();
                            });
                          },
                          icon: Icon(Icons.logout),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(child: pageselected)
        ],
      ),
    );
  }
}
