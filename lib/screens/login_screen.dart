import 'package:account_screen1/screens/sign_up_screen.dart';
import 'package:account_screen1/screens/trade_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:ndialog/ndialog.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var emailController= TextEditingController();
  var passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/signin.png'),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/Rectangle 9.png'),
            fit: BoxFit.cover,
          )),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Sign in your account to get started',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                        size: 26,
                        color: Color(0xff153F3B),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 26,
                            color: Color(0xff153F3B),
                          ),
                          suffixIcon:
                              const Icon(Icons.visibility, color: Color(0xff153F3B)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Password',
                          focusColor: Colors.black,
                          hintStyle: const TextStyle(
                            color: Colors.black,
                              fontSize: 14,fontWeight: FontWeight.w400
                          ),
                          filled: true,
                          fillColor: Colors.white)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'forget password?',
                        style: TextStyle(color: Colors.white,
                            fontSize: 14,fontWeight: FontWeight.w400
                        ),
                        textAlign: TextAlign.end,
                      ),
                    )),
                const SizedBox(
                  height: 70,
                ),
                InkWell(
                  onTap: () async{

                  //   var email = emailController.text.trim();
                  //   var password = passwordController.text.trim();
                  //
                  //   if( email.isEmpty || password.isEmpty){
                  //
                  //     Fluttertoast.showToast(msg: 'Please fill all field');
                  //     return;
                  //   }
                  //   //request to firebase auth
                  //
                  //     ProgressDialog progressDialog = ProgressDialog(
                  //         context,
                  //         title: const Text('Login'),
                  //         message: const Text('Please Wait'),
                  //     );
                  //    progressDialog.show();
                  //
                  //    try{
                  //     FirebaseAuth auth = FirebaseAuth.instance;
                  // UserCredential userCredential = await  auth.signInWithEmailAndPassword(email: email,password: password);
                  //
                  //    if( userCredential.user != null){
                  //      progressDialog.dismiss();
                       Get.to(()=> const Home()  );
                  //      Fluttertoast.showToast(msg: "run");
                  //    }
                  //    }
                  //    on FirebaseAuthException catch (e ){
                  //      progressDialog.dismiss();
                  //      if( e.code == 'user not found'){
                  //        Fluttertoast.showToast(msg: 'user not found');
                  //
                  //      }else if( e.code == 'wrong password'){
                  //        Fluttertoast.showToast(msg: 'wrong password');
                  //      }
                  //    }
                  //    catch(e){
                  //      Fluttertoast.showToast(msg: 'something went wrong');
                  //      progressDialog.dismiss();
                  //    }
                  },

                  child: Container(
                    height: 41,
                    width: 241,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                        onTap: (){
                          Get.to(()=>const SignUpScreen());
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          )),
        ),
      ],
    ));
  }
}
