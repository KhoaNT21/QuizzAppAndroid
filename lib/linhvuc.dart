import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/question.dart';

class linhvuc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _linhvucState();
  }
}

class _linhvucState extends State<linhvuc> {
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
            "Chọn Lĩnh Vực",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            // Container(
            //   padding: const EdgeInsets.only(top: 100),
            //   child: Text(
            //     'Chọn Lĩnh Vực',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontSize: 35,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.only(top: 200, left: 60, right: 60),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(239, 50)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => question()));
                },
                child: const Text(
                  'Lịch Sử',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 60, right: 60),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(239, 50)),
                onPressed: () {},
                child: const Text(
                  'Địa Lý',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 60, right: 60),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(239, 50)),
                onPressed: () {},
                child: const Text(
                  'Thể Thao',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
