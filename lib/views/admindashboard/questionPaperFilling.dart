import 'package:collegeapp/controllers/question_controller.dart';
import 'package:collegeapp/views/admindashboard/designQuestionPaper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class QuestionPapaerFilling extends StatefulWidget {
  const QuestionPapaerFilling({super.key});

  @override
  State<QuestionPapaerFilling> createState() => _QuestionPapaerFillingState();
}

class _QuestionPapaerFillingState extends State<QuestionPapaerFilling> {
  final QuestionController questionController = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(114, 170, 104, 1.0),
        shadowColor: Colors.black45,
        elevation: BorderSide.strokeAlignOutside,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) {
                return const design_question_paper();
              }), (route) => false);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white70,
            )),
        title: Center(
          child: Text(
            '${questionController.testName.text}',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: TextField(
              onChanged: (v) {},
              controller: questionController.question,
              style: const TextStyle(fontSize: 16),
              maxLines: 5,
              minLines: 1,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                hintText: 'Question',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.2),
                    fontSize: 14),
                contentPadding: const EdgeInsets.only(left: 10, right: 10),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue)),
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.5))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.3))),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.5))),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          for (var i = 0; i < 4; i++)
            TextField(
              onChanged: (v) {},
              //controller: option,
              style: const TextStyle(fontSize: 16),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                hintText: 'Option${i + 1}',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.2),
                    fontSize: 14),
                contentPadding: const EdgeInsets.only(left: 10, right: 10),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue)),
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.5))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.3))),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: Colors.blue.withOpacity(0.5))),
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (v) {},
            //controller: option,
            style: const TextStyle(fontSize: 16),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
              hintText: 'answer 0-3',
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.2),
                  fontSize: 14),
              contentPadding: const EdgeInsets.only(left: 10, right: 10),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue)),
              border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue.withOpacity(0.5))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue.withOpacity(0.3))),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue.withOpacity(0.5))),
            ),
          )
        ],
      ),
    );
  }
}
