import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodora_users_app/global/global.dart';
import 'package:foodora_users_app/mainScreens/home_screen.dart';
import 'package:foodora_users_app/widgets/custom_text_field.dart';
import 'package:foodora_users_app/widgets/error_dialog.dart';
import 'package:foodora_users_app/widgets/loading_dialog.dart';
import 'package:email_auth/email_auth.dart';
import 'auth_screen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController optController = TextEditingController();

  void sendOTP() async {
    EmailAuth.sessionName = "test session";
    var res = await EmailAuth.sendOtp(receiverMail: emailController.text);
    if (res) {}
  }

  void verifyOTP() async {
    var res = EmailAuth.validate(
        receiverMail: emailController.text, userOTP: optController.text);
    if (res) {
      print("OPT verified");
    } else {
      print("Invalid OTP");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                "images/loginGIF.gif",
                height: 270,
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  data: Icons.email,
                  controller: emailController,
                  hintText: "Email",
                  suffixIcon: TextButton(
                    child: Text("Send OTP"),
                    onPressed: () => sendOTP(),
                  ),
                  isObsecre: false,
                ),
                CustomTextField(
                  data: Icons.lock,
                  controller: optController,
                  hintText: "OPT",
                  isObsecre: true,
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: const Text(
              "Verify",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            ),
            onPressed: () => verifyOTP(),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
