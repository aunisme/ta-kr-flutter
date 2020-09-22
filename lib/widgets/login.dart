import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/constants.dart';
import 'package:kejar_recruitment/services/auth.dart';

class LoginWidget extends StatefulWidget {
  final Function toggleLogin;
  LoginWidget({this.toggleLogin});
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final AuthHandler _auth = AuthHandler();
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;
  String email = '';
  String password = '';
  String err = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: otherWhite,
      appBar: AppBar(
        backgroundColor: otherWhite,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width - 32,
        // color: Colors.amber,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              child: SvgPicture.asset('assets/images/auth-screen-art.svg'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                      // textAlign: TextAlign.center,
                      decoration: signInInputDecoration.copyWith(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email_outlined)),
                      validator: (val) =>
                          val.isEmpty ? 'Enter a valid email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: _obscure,
                      // textAlign: TextAlign.center,
                      decoration: signInInputDecoration.copyWith(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline)),
                      validator: (val) => val.length < 6
                          ? 'Password at least 6 chars long'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                    _obscure
                        ? FlatButton.icon(
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                            icon: Icon(
                              Icons.visibility,
                            ),
                            label: Text('Show'))
                        : FlatButton.icon(
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                            icon: Icon(
                              Icons.visibility_off,
                            ),
                            label: Text('Hide')),
                    SizedBox(height: 30.0),
                    FlatButton(
                      height: 50,
                      minWidth: 100,
                      // splashColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text('Login',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      color: mTitleColor,
                      //this should be async
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          dynamic result = await _auth
                              .signInWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              err = 'Can not login with this credential';
                            });
                          }
                          print(email);
                          print(password);
                        }
                      },
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      err,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
            FlatButton(
              height: 30,
              minWidth: 100,
              // splashColor: Colors.black12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('Cancel',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: mTitleColor)),
              // color: mTitleColor,
              onPressed: () {
                widget.toggleLogin();
              },
            ),
            SizedBox(
              height: 70,
            ),
            Text('PT. Kelola Jasa Artha'),
            SizedBox(
              height: 10,
            ),
            Text('Muhammad Syahrul, 2020'),
          ],
        ),
      ),
    );
  }
}
