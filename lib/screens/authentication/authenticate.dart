import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderac/screens/authentication/register.dart';
import 'package:orderac/screens/authentication/sign_in.dart';
import 'package:orderac/shared/page_transitions/slide_right_route.dart';

// class Authenticate extends StatefulWidget {
//   @override
//   _AuthenticateState createState() => _AuthenticateState();
// }

// class _AuthenticateState extends State<Authenticate> {
//   bool isRegistered = false;

//   void _toogleView() {
//     setState(() {
//       isRegistered = !isRegistered;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return (isRegistered)
//         ? SignIn(toogleView: _toogleView)
//         : Register(toogleView: _toogleView);
//   }
// }

class Authenticate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/initials/splash.jpg'),
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60.0,
                  child: Image.asset('assets/icon/icon.png'),
                ),
                Text(
                  'Orderac',
                  style: GoogleFonts.comfortaa(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w600,
                  ),
                  // style: TextStyle(
                  //   fontSize: 45.0,
                  //   fontWeight: FontWeight.w400,
                  // ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60.0,
                  width: 180.0,
                  child: OutlineButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        SlideLeftRoute(page: SignIn()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    borderSide: BorderSide(
                      // color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
                SizedBox(
                  height: 62.0,
                  width: 180.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        SlideLeftRoute(page: Register()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );

    // final bottomNavigationBar =

    return Scaffold(
      body: body,
      // bottomNavigationBar: bottomNavigationBar,
    );
  }
}
