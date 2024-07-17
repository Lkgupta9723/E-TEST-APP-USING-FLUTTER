import "package:collegeapp/views/adminfirstpage.dart";
import "package:flutter/material.dart";

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

TextEditingController teacherEmail = TextEditingController();
TextEditingController teacherPassword = TextEditingController();

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 44,
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: teacherEmail,
                style: const TextStyle(fontSize: 16),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2).withOpacity(0.1),
                    hintText: 'Enter id',
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 44,
              child: TextField(
                onChanged: (v) {
                  setState(() {});
                },
                controller: teacherPassword,
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Adminfirstpage();
                }));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(114, 170, 104, 1.0),
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 14),
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
