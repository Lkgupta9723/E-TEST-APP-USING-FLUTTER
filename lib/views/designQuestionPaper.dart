import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class design_question_paper extends StatefulWidget {
  const design_question_paper({super.key});

  @override
  State<design_question_paper> createState() => _design_question_paperState();
}

TextEditingController testName = TextEditingController();
TextEditingController question_count = TextEditingController();

class _design_question_paperState extends State<design_question_paper> {
  var hour = 0;
  var min = 0;
  var startDate = DateTime.now();

  // void dateTimePickerWidget(BuildContext context) {
  //   return DatePicker.showDatePicker(
  //     context,
  //     dateFormat: 'dd MMMM yyyy HH:mm',
  //     initialDateTime: DateTime.now(),
  //     minDateTime: DateTime(2000),
  //     maxDateTime: DateTime(3000),
  //     onMonthChangeStartWithFirstDate: true,
  //     onConfirm: (dateTime, List<int> index) {
  //       DateTime selectdate = dateTime;
  //       final selIOS = DateFormat('dd-MMM-yyyy - HH:mm').format(selectdate);
  //       print(selIOS);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                onChanged: (v) {
                  setState(() {});
                },
                controller: testName,
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
                onChanged: (v) {
                  setState(() {});
                },
                controller: question_count,
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
                NumberPicker(
                  minValue: 0,
                  maxValue: 12,
                  value: hour,
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
                    setState(() {
                      hour = value;
                    });
                  },
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
                NumberPicker(
                    minValue: 0,
                    maxValue: 59,
                    value: min,
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
                      setState(() {
                        min = value;
                      });
                    }),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          // const SizedBox(
          //   height: 15,
          // ),
          // const Padding(
          //   padding: EdgeInsets.only(left: 20),
          //   child: Text(
          //     "Start Date and time",
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          //   ),
          // ),
          //    ElevatedButton(
          //   onPressed: () {
          //     dateTimePickerWidget(context);
          //   },
          //   child: Text('Pick Date-Time'),
          // ),
          const Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: InkWell(
                onTap: () {},
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
