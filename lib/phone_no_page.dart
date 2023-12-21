import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:vsjfirebase/utilities.dart';

import 'dart:convert';
import 'vsjgooglesignin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Verify_Number_Page extends StatefulWidget {
  const Verify_Number_Page({super.key});

  @override
  State<Verify_Number_Page> createState() => _Verify_Number_PageState();
}

class _Verify_Number_PageState extends State<Verify_Number_Page> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  _FirebaseDemoState() {}
  String firebasedata = "data";
  String data="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.a,color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Please Enter Your Phone Number",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "You'll receive a 4 digit code to verify next.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.indigo)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InternationalPhoneNumberInput(
                            inputDecoration: const InputDecoration(
                                filled: true,
                                border: InputBorder.none,
                                fillColor: Colors.white),
                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },
                            selectorConfig: const SelectorConfig(
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            ignoreBlank: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: TextStyle(color: Colors.black),
                            initialValue: number,
                            textFieldController: AuthUtilies.phoneno,
                            formatInput: true,
                            keyboardType: const TextInputType.numberWithOptions(
                                signed: true, decimal: true),
                            onSaved: (PhoneNumber number) {
                              print('On Saved: $number');
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: const BoxDecoration(color: Colors.indigo),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "Continue",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () async {
                        User? user = await VsjGoogleSignIn.doPhoneSignIn();
                        if (user == null)
                          data = "";
                        else
                          data = user.phoneNumber!;
                        setState(() {});
                         Navigator.pushNamed(context, '/Conform_verifitation_page');
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
