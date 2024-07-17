import 'package:collegeapp/views/adminlogin.dart';
import 'package:collegeapp/views/student_login.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Login as a -",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const AdminLogin();
              }));
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(114, 170, 104, 1.0),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Admin',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return const StudentLogin();
              })));
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(114, 170, 104, 1.0),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Student',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
