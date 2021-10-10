import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: Row(
          children: [
            Container(
                height: size.width * 0.5,
                child: Image.asset('assets/login.png')),
            Expanded(
              child: Container(
                // color: Color(0xFF2D1B1B),

                // height: size.height / 4,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Spacer(),
                      Text(
                        "Welcome to Stogika",
                        style: TextStyle(color: Colors.black87, fontSize: 30),
                      ),
                      Spacer(),
                      Icon(
                        Icons.person,
                        size: 60,
                      ),
                      Container(
                        width: size.width / 3,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'User Name',
                            labelText: 'Name ',
                          ),
                          //  onSaved: (String? value) {},
                          validator: (String? value) {
                            return (value != null && value.contains('@'))
                                ? 'Do not use the @ char.'
                                : null;
                          },
                        ),
                      ),
                      Container(
                        width: size.width / 3,
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.vpn_key_sharp),
                            hintText: 'password',
                            labelText: 'password ',
                          ),
                          //onSaved: (String? value) {},
                          validator: (String? value) {},
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("       Login      "),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green[600]),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
