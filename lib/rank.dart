import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class rank extends StatefulWidget {
  const rank({super.key});

  @override
  State<rank> createState() => _rankState();
}

class _rankState extends State<rank> {
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
            "Bảng Xếp Hạng",
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
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('images/beluga.jpg')),
                  title: Text(
                    "EggNguyen",
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                  trailing: Text(
                    "Điểm : 9999",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
