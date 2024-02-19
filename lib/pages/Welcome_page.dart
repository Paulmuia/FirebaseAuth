import 'package:firebaseauth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String email;
   WelcomePage({super.key , required this.email});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.35,
              width: w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/signup.png'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.16,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[500],
                    radius: 60,
                    backgroundImage: const AssetImage('assets/profile1.png'),
                  )
                ],
              ),
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // SizedBox(height: 50,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    email.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: (){
                AuthController.instance.logOut();
              },
              child: Container(
                height: h * 0.08,
                width: w * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage('assets/loginbtn.png'),
                        fit: BoxFit.cover)),
                child: const Center(
                    child: Text(
                  'Sign out',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: w * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
