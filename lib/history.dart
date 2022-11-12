import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/question.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
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
            "Lịch Sử Chơi",
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
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Card(
                color: Colors.transparent,
                child: ListTile(
                  title: Text(
                    "1/1/2999 15:33 PM",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  subtitle: Text(
                    "Số câu đúng : 10/15",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  trailing: Text(
                    "Điểm : 9999",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
