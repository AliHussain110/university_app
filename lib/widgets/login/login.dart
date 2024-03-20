import 'package:flutter/material.dart';
import '../homepage/homepage.dart';
import '/models/users.dart';
import '/widgets/homepage/homepage.dart';

class MyCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width * 2, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  int _index = 0;
  var appbar = AppBar();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyCustomShape(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/1.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: 150,
                  //   // left: MediaQuery.of(context).size.width * 0.14,
                  //   child: Center(
                  // child:
                  // Image.asset(
                  //   'assets/images/3.png',
                  //   width: 300,
                  //   height: 300,
                  // ),
                  //),
                  //),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      'assets/images/3.png',
                      height: MediaQuery.of(context).size.height * 0.38,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.all(10.5),
              width: MediaQuery.of(context).size.width * 1,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Student ID',
                      ),
                      validator: (value) {
                        bool check = false;
                        if (value!.isEmpty) {
                          return 'Please enter your Student ID';
                        }

                        for (int i = 0; i < UsersData.length; i++) {
                          if (value == UsersData[i].userid) {
                            _index = i;
                            check = true;
                            break;
                          }
                        }
                        if (check != true) {
                          return 'wrong student id';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!.trim();
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value != UsersData[_index].password) {
                          return 'sehi password laga warna bhag ja';
                        }
                        // if (value.length < 6) {
                        //   return 'Password must be at least 6 characters long';
                        // }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!.trim();
                      },
                    ),
                    SizedBox(height: 32.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('ello me');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage(_index);
                              },
                            ),
                          );
                          _formKey.currentState!.save();

                          // Perform login with email and password
                        }
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
