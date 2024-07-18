import 'package:collegeapp/views/detailpage.dart';
import 'package:collegeapp/views/studentdashboard/studentloginpage.dart';
import 'package:flutter/material.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _StudentLoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'If you are already a user?',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StudentLoginPage()));
              },
              child: const Text(
                'Login',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 44,
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: email,
                style: const TextStyle(fontSize: 16),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                    hintText: 'Enter College mail id',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                        fontSize: 14),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10)),
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
                controller: password,
                style: const TextStyle(fontSize: 16),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.2),
                        fontSize: 14),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10)),
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
                    MaterialPageRoute(builder: (context) => const DetailPage()),
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
                    'SignUp',
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
    );
  }
}
