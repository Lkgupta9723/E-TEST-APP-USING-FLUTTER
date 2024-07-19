import 'package:collegeapp/controllers/question_controller.dart';
import 'package:collegeapp/views/admindashboard/adminfirstpage.dart';
import 'package:collegeapp/views/admindashboard/questionPaperFilling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:numberpicker/numberpicker.dart';

class design_question_paper extends StatefulWidget {
  const design_question_paper({super.key});

  @override
  State<design_question_paper> createState() => _design_question_paperState();
}

class _design_question_paperState extends State<design_question_paper> {
  final QuestionController questionController = Get.put(QuestionController());

  var get;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) {
                return const Adminfirstpage();
              }), (route) => false);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white70,
            )),
        title: const Center(
          child: Text(
            "Question paper details",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: SizedBox(
              height: 44,
              child: TextField(
                onChanged: (v) {},
                controller: questionController.testName,
                style: const TextStyle(fontSize: 16),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                    hintText: 'Test Name',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                        fontSize: 14),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 44,
              child: TextField(
                onChanged: (v) {},
                controller: questionController.question_count,
                style: const TextStyle(fontSize: 16),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                    hintText: 'No. of Question',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                        fontSize: 14),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Time Duration",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 100,
            width: 215,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black87,
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Hr ",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Obx(
                  () => NumberPicker(
                    minValue: 0,
                    maxValue: 12,
                    value: questionController.Hour.value,
                    itemHeight: 30,
                    itemWidth: 40,
                    textStyle: const TextStyle(color: Colors.white30),
                    selectedTextStyle:
                        const TextStyle(color: Colors.white, fontSize: 22),
                    zeroPad: true,
                    infiniteLoop: true,
                    decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.white),
                          bottom: BorderSide(color: Colors.white)),
                    ),
                    onChanged: (value) {
                      questionController.Hour.value = value;
                    },
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  ":",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Min ",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                Obx(
                  () => NumberPicker(
                      minValue: 0,
                      maxValue: 59,
                      value: questionController.Min.value,
                      itemHeight: 30,
                      itemWidth: 40,
                      textStyle: const TextStyle(color: Colors.white30),
                      selectedTextStyle:
                          const TextStyle(color: Colors.white, fontSize: 22),
                      zeroPad: true,
                      infiniteLoop: true,
                      decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.white),
                            bottom: BorderSide(color: Colors.white)),
                      ),
                      onChanged: (value) {
                        questionController.Min.value = value;
                      }),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const QuestionPapaerFilling();
                    }),
                  );
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(114, 170, 104, 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
