import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_application_1/forgetpass.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/provider/google_signin.dart';
import 'package:flutter_application_1/register.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return loginState();
  }
}

class loginState extends State<login> {
  // GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  TextEditingController txtTaiKhoan = new TextEditingController();
  TextEditingController txtMatKhau = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // GoogleSignInAccount? user = _googleSignIn.currentUser;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 90),
              child: Text(
                'KTK QUIZZ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 70, left: 40, right: 40),
              child: TextField(
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Tên Đăng Nhập',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextField(
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Mật Khẩu',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50, left: 40, right: 40),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(156, 193, 241, 115),
                    foregroundColor: Color.fromRGBO(68, 58, 58, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(239, 50)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homepage()));
                },
                child: const Text(
                  'Đăng Nhập',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(184, 232, 154, 100),
                    foregroundColor: Color.fromRGBO(68, 58, 58, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(239, 50)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => forgetpass()));
                },
                child: const Text(
                  'Quên Mật Khẩu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(185, 236, 171, 100),
                    foregroundColor: Color.fromRGBO(68, 58, 58, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(239, 50)),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => register()));
                },
                child: const Text(
                  'Đăng Ký',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'Đăng Nhập Với',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(75, 71, 71, 100)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipOval(
                    child: Material(
                        child: InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('images/fb.jpg'),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ))),
                  ),
                  ClipOval(
                    child: Material(
                        child: InkWell(
                            onTap: () async {
                              //         await _googleSignIn.signIn();
                              //         setState(() {});
                              //         Navigator.push(
                              // context, MaterialPageRoute(builder: (_) => register()));
                              // final provider =
                              //     Provider.of<GoogleSignInProvider>(context,
                              //         listen: false);
                              // provider.googleLogin();
                              await GoogleSignInProvider().signInWithGoogle();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => homepage()));
                            },
                            child: Ink.image(
                              image: AssetImage('images/google.jpg'),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
