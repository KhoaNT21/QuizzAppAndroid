import 'package:flutter/material.dart';

class forgetpass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return forgetpassState();
  }
}

class forgetpassState extends State<forgetpass> {
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
            "Quên Mật Khẩu",
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
            //     'Quên Mật Khẩu',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontSize: 40,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.only(top: 150, left: 40, right: 40),
              child: TextField(
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
                    backgroundColor: Color.fromARGB(156, 193, 241, 115),
                    foregroundColor: Color.fromRGBO(68, 58, 58, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(239, 50)),
                onPressed: () {},
                child: const Text(
                  'Lấy Mật Khẩu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
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
