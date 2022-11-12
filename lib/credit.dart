import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class credit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return creditState();
  }
}

class creditState extends State<credit> {
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
        title: Row(
          children: [
            Expanded(
              child: Text('Tên Đăng Nhập'),
            ),
            Text('150'),
            Icon(
              Icons.diamond,
              color: Colors.blueAccent,
              size: 25,
            ),
          ],
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              padding: const EdgeInsets.only(top: 140),
              child: Text(
                'Mua CREDIT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.diamond,
                      color: Colors.blueAccent,
                    ),
                    label: Text(
                      '1.000',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(175, 150)),
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.diamond,
                      color: Colors.blueAccent,
                    ),
                    label: Text(
                      '1.500',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(175, 150)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 40, right: 35),
                  child: Text(
                    '100.000 VND',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 35, right: 40),
                  child: Text(
                    '150.000 VND',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.diamond,
                      color: Colors.blueAccent,
                    ),
                    label: Text(
                      '2.000',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(175, 150)),
                    onPressed: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.diamond,
                      color: Colors.blueAccent,
                    ),
                    label: Text(
                      '2.500',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white70,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: Size(175, 150)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 40, right: 35),
                  child: Text(
                    '200.000 VND',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 35, right: 40),
                  child: Text(
                    '250.000 VND',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
