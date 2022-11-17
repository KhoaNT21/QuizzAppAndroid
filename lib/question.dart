import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/obj/question_obj.dart';

class question extends StatefulWidget {
  const question({super.key});

  @override
  State<question> createState() => _questionState();
}

class _questionState extends State<question> {
  int _currentIndex = 0;
  final Map<int, dynamic> _answers = {};
  void _showAlertDialog() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Warning'),
        content: const Text('You must attempt all questions to continue'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  // void _handleNext() {
  //   if (_answers[_currentIndex] == null) {
  //     _showAlertDialog();
  //     return;
  //   }
  //   if (_currentIndex < (questionsData.length - 1)) {
  //     setState(() {
  //       _currentIndex++;
  //     });
  //   } else {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
  //       builder: (context) => homepage(),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final question = questionsData[_currentIndex];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Expanded(
              child: Text(
                'Cơ Hội : 5',
              ),
            ),
            Text('64'),
            Icon(
              Icons.diamond,
              size: 25,
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                    'Điểm : 64',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Câu Hỏi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(160, 235, 168, 100),
                    foregroundColor: Colors.black,
                    child: Text(
                      '${_currentIndex + 1}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    question.question,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...question.options.map(
                        (option) => RadioListTile(
                          title: Text(option),
                          value: option,
                          groupValue: _answers[_currentIndex],
                          onChanged: (value) {
                            setState(() {
                              _answers[_currentIndex] = option;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.only(left: 30, right: 30),
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //         backgroundColor: Color.fromRGBO(185, 236, 171, 100),
                //         foregroundColor: Colors.black,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(12)),
                //         minimumSize: Size(239, 50)),
                //     onPressed: () {},
                //     child: const Text(
                //       'Nội dung',
                //       style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //         backgroundColor: Color.fromRGBO(185, 236, 171, 100),
                //         foregroundColor: Colors.black,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(12)),
                //         minimumSize: Size(239, 50)),
                //     onPressed: () {},
                //     child: const Text(
                //       'Nội dung',
                //       style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //         backgroundColor: Color.fromRGBO(185, 236, 171, 100),
                //         foregroundColor: Colors.black,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(12)),
                //         minimumSize: Size(239, 50)),
                //     onPressed: () {},
                //     child: const Text(
                //       'Nội dung',
                //       style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //         backgroundColor: Color.fromRGBO(185, 236, 171, 100),
                //         foregroundColor: Colors.black,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(12)),
                //         minimumSize: Size(239, 50)),
                //     onPressed: () {},
                //     child: const Text(
                //       'Nội dung',
                //       style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Thời gian: 20',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: TextButton(
                          child: Text(
                            '50:50',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(183, 105, 62, 100),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              minimumSize: Size(50, 50)),
                          onPressed: () {
                            // _handleNext();
                          },
                        ),
                      ),
                      Container(
                        child: TextButton(
                          child: Icon(Icons.people),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(183, 105, 62, 100),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              minimumSize: Size(70, 50)),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        child: TextButton(
                          child: Icon(Icons.phone),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(183, 105, 62, 100),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              minimumSize: Size(70, 50)),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        child: TextButton.icon(
                          icon: Icon(Icons.diamond),
                          label: Text(
                            '50',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(183, 105, 62, 100),
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              minimumSize: Size(70, 50)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

// final _questions = const [
//   {
//     'question': 'How long is New Zealand’s Ninety Mile Beach?',
//     'answers': [
//       {'answerText': '88km, so 55 miles long.', 'score': true},
//       {'answerText': '55km, so 34 miles long.', 'score': false},
//       {'answerText': '90km, so 56 miles long.', 'score': false},
//     ],
//   },
//   {
//     'question':
//         'In which month does the German festival of Oktoberfest mostly take place?',
//     'answers': [
//       {'answerText': 'January', 'score': false},
//       {'answerText': 'October', 'score': false},
//       {'answerText': 'September', 'score': true},
//     ],
//   },
//   {
//     'question': 'Who composed the music for Sonic the Hedgehog 3?',
//     'answers': [
//       {'answerText': 'Britney Spears', 'score': false},
//       {'answerText': 'Timbaland', 'score': false},
//       {'answerText': 'Michael Jackson', 'score': true},
//     ],
//   },
// ];
