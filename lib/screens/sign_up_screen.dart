import 'package:account_screen1/screens/login_screen.dart';
import 'package:account_screen1/screens/trade_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:ndialog/ndialog.dart';
import 'account_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool is_checked = false;

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/signin.png'),
          )),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/Rectangle 9.png'),
          )),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Create new account to begin your \n journey with Crypto Alert',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 0.0),
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: const Icon(
                            Icons.person,
                            size: 26,
                            color: Color(0xff153F3B),
                          ),
                          hintText: 'Name',
                          hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: const Icon(
                            Icons.email_sharp,
                            size: 26,
                            color: Color(0xff153F3B),
                          ),
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                              color: Color(0xff153F3B),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 26,
                          color: Color(0xff153F3B),
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Color(0xff153F3B),
                        ),
                        hintText: 'password',
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 26,
                          color: Color(0xff153F3B),
                        ),
                        hintText: 'Confirm password',
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Color(0xff153F3B),
                        ),
                      ),
                    ),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Checkbox(
                            side:
                                const BorderSide(color: Colors.white, width: 2),
                            value: is_checked,
                            onChanged: (val) {
                              setState(() {
                                is_checked = val!;
                              });
                            }),
                        const Text(
                          'I Agree ',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Text(
                          'privacy policies ',
                          style: TextStyle(
                            color: Color(0xffC4F357),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Text(
                          ' and',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          ' terms and conditions      ',
                          style: TextStyle(
                            color: Color(0xffC4F357),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => AccountPage());
                      Get.back();
                    },
                    child: InkWell(
                      onTap: () async {
                        // var name = nameController.text.trim();
                        // var email = emailController.text.trim();
                        // var password = passwordController.text.trim();
                        // var confirmPassword = confirmPasswordController.text.trim();
                        //
                        // if (name.isEmpty ||
                        //     email.isEmpty ||
                        //     password.isEmpty ||
                        //     confirmPassword.isEmpty) {
                        //   Fluttertoast.showToast(msg: 'please fill all field');
                        //   return;
                        // }
                        // if (password.length < 6) {
                        //   Fluttertoast.showToast(
                        //       msg:
                        //           'Weak Password, at least 6 characters are required');
                        //   return;
                        // }
                        // if (password != confirmPassword) {
                        //   Fluttertoast.showToast(msg: 'password do not match');
                        //   return;
                        // }else{
                          Get.to(() => const LogInScreen());
                        // }
                        //
                        // ProgressDialog progressDialog = ProgressDialog(
                        //   context,
                        //   title: const Text('Sign up'),
                        //   message: const Text('please wait'),
                        // );
                        // progressDialog.show();
                        // try {
                        //   FirebaseAuth auth = FirebaseAuth.instance;
                        //
                        //   UserCredential userCredential =
                        //       await auth.createUserWithEmailAndPassword(
                        //           email: email, password: password);
                        //
                        //   if (userCredential.user != null) {
                        //     // store user information in Realtime database
                        //
                        //     DatabaseReference userRef = FirebaseDatabase
                        //         .instance
                        //         .ref()
                        //         .child('users');
                        //
                        //     String uid = userCredential.user!.uid;
                        //     int dt = DateTime.now().millisecondsSinceEpoch;
                        //
                        //     await userRef.child(uid).set({
                        //       'fullName': name,
                        //       'email': email,
                        //       'uid': uid,
                        //       'dt': dt,
                        //       'profileImage': ''
                        //     });
                        //     Fluttertoast.showToast(msg: 'Success');
                        //     Navigator.of(context).pop();
                        //   }
                        //   else {
                        //     Fluttertoast.showToast(msg: 'Failed');
                        //   }
                        //   progressDialog.dismiss();
                        // }
                        // on FirebaseAuthException catch (e) {
                        //
                        //   progressDialog.dismiss();
                        //
                        //   if (e.code == 'email-already-in-use') {
                        //
                        //     Fluttertoast.showToast(
                        //
                        //         msg: 'Email is already in Use');
                        //   }
                        //   else if (e.code == 'weak-password') {
                        //
                        //     Fluttertoast.showToast(msg: 'Password is weak');
                        //   }
                        // }
                        // catch (e) {
                        //   progressDialog.dismiss();
                        //
                        //   Fluttertoast.showToast(msg: 'Something went wrong');
                        // }
                      },
                      child: Container(
                        width: 241,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffCFFE5F),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(() => const LogInScreen());
                          },
                          child: InkWell(
                            onTap: () {
                              Get.to(() => SignUpScreen);
                            },
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                color: Color(0xffCFFE5F),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
