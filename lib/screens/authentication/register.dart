import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderac/screens/authentication/register_name.dart';
import 'package:orderac/shared/page_transitions/slide_right_route.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  bool loading = false;

  // void _startLoading() {
  //   setState(() {
  //     loading = true;
  //   });
  // }

  // void _stopLoading(result) {
  //   setState(() {
  //     loading = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final body = Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.0),
                    Text(
                      'Register',
                      style: GoogleFonts.comfortaa(
                        fontSize: 50.0,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: TextFormField(
                        cursorWidth: 1.0,
                        decoration: InputDecoration(
                          hoverColor: Colors.black,
                          fillColor: Colors.black,
                          focusColor: Colors.black,
                          counterText: '',
                          border: InputBorder.none,
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 18.0),
                        ),
                        validator: (value) {
                          if (value == '') {
                            return 'Enter an email';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: TextFormField(
                        cursorWidth: 1.0,
                        decoration: InputDecoration(
                          hoverColor: Colors.black,
                          fillColor: Colors.black,
                          focusColor: Colors.black,
                          counterText: '',
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 18.0),
                        ),
                        validator: (value) {
                          if (value.length < 6) {
                            return 'Password must be atleast 6 characters';
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    FlatButton(
                      minWidth: double.maxFinite,
                      color: Colors.black,
                      height: 60.0,
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // onPressed: () async {
                      //   if (_formKey.currentState.validate()) {
                      //     _startLoading();
                      //     dynamic result = await _auth
                      //         .registerWithEmailAndPasswordWithFirebase(
                      //             email, password);
                      //     _stopLoading(result);
                      //   }
                      // },
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          FocusScope.of(context).unfocus();
                          Navigator.push(
                            context,
                            SlideLeftRoute(page: RegisterName(email, password)),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: body,
    );
  }
}
