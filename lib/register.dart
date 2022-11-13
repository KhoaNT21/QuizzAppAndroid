import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return registerState();
  }
}

class registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black87,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Đăng Ký",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
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
            // Container(
            //   padding: const EdgeInsets.only(top: 90),
            //   child: Text(
            //     'Đăng Ký',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontSize: 40,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.only(top: 250, left: 40, right: 40),
              child: TextField(
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Tên Đăng Nhập',
                    hintText: '*',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Colors.red),
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
                    labelText: 'Tên Người Chơi',
                    hintText: '*',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Mật Khẩu',
                    hintText: '*',
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 40, right: 40),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(13),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Số Điện Thoại',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
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
                      context, MaterialPageRoute(builder: (_) => login()));
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
          ],
        ),
      ),
    );
  }
}
