import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

TextEditingController name = TextEditingController();
TextEditingController firstYear = TextEditingController();
TextEditingController secondyear = TextEditingController();
TextEditingController thirdyear = TextEditingController();
TextEditingController fourthyear = TextEditingController();
TextEditingController project1 = TextEditingController();
TextEditingController project2 = TextEditingController();
TextEditingController project3 = TextEditingController();
TextEditingController project4 = TextEditingController();
TextEditingController rollnumber = TextEditingController();

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                'Details',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'LogOut',
                    style: TextStyle(color: Colors.black),
                  ))),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: name,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: rollnumber,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'RTU roll no.',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'First year Indusdrial Training Details',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: firstYear,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Company Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: project1,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Project Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Second year Indusdrial Training Details',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: secondyear,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Company Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: project2,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Project Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'third year Indusdrial Training Details',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: thirdyear,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Company Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: project3,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Project Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Fourth year Indusdrial Training Details',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: fourthyear,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Company Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: project4,
                  style: const TextStyle(fontSize: 16),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                      hintText: 'Project Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 14),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const DetailPage()),
                      (route) => false);
                },
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
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
