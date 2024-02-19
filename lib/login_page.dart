
import 'package:firebaseauth/controllers/auth_controller.dart';
import 'package:firebaseauth/pages/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController(); 



    double w= MediaQuery.of(context).size.width;  
    double h= MediaQuery.of(context).size.height;

    return Scaffold (
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h*0.35,
              width: w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/loginimg.png'),
                  fit: BoxFit.cover
                  )
              ),
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hello',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),),
                 const  Text('Sign in to your account',style: TextStyle(fontSize: 20,),),
                  const SizedBox(height: 50,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(1,1),
                          color: Colors.grey.withOpacity(0.5)
                        )
                      ]
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        prefixIcon: const Icon(Icons.email,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                   Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: const Offset(1,1),
                          color: Colors.grey.withOpacity(0.5)
                        )
                      ]
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: const Icon(Icons.password,color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0
                          )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container()),
            const Text('Forgot your password?',style: TextStyle(fontSize: 20,),),
      
              ],
            ),
            const SizedBox(height: 50,),
           GestureDetector(
            onTap: (){
              AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
            },
             child: Container(
                height: h*0.08,
                width: w*0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    
                    
                    image: AssetImage('assets/loginbtn.png'),
                    fit: BoxFit.cover
                    )
                ),
                child: const Center(child: Text('Sign in',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white),)),
                   
              ),
           ),
            SizedBox(height: w*0.08,),
            RichText(text: TextSpan(
              text: "Don\'t have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
              ),
              children: [
                TextSpan(
              text: "  Create",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>const SignUpPage())
                )
              ]
            ))
       
          ],
        ),
      ),
    );
  }
}