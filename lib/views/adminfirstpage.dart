import 'package:collegeapp/views/designQuestionPaper.dart';
import 'package:flutter/material.dart';

class Adminfirstpage extends StatefulWidget {
  const Adminfirstpage({super.key});

  @override
  State<Adminfirstpage> createState() => _AdminfirstpageState();
}

class _AdminfirstpageState extends State<Adminfirstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            "Learning App",
            style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromRGBO(114, 170, 104, 1.0),
        shadowColor: Colors.black45,
        elevation: BorderSide.strokeAlignOutside,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const design_question_paper();
                }));
        },
        backgroundColor: const Color.fromRGBO(114, 170, 104, 1.0),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
