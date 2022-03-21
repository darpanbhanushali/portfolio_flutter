import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/Services/onhoverbuttons.dart';
import 'package:portfolio_flutter/Services/responsive.dart';
import 'package:portfolio_flutter/components/info_contact.dart';
import 'package:http/http.dart' as http;
import 'package:email_validator/email_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/constant.dart';

class Contact extends StatefulWidget {
  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool isLoading = false;
  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();
  final fieldText3 = TextEditingController();
  final fieldText4 = TextEditingController();
  final toast = FToast();
  static final formKey = GlobalKey<FormState>();
  late String name;
  late String email;
  late String subject;
  late String message;

  @override
  void initState() {
    super.initState();
    toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Expanded(
      flex: 7,
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isSmallScreen(context) ? 30 : 50,
            vertical: Responsive.isSmallScreen(context) ? 8 : 30),
        color: Color(0xFFF2F2FC),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Me',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Color(0xFF2E2555), fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  height: 4,
                  width: 55,
                  color: Color(0xFF2F5EB0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  height: 4,
                  width: 35,
                  color: Color(0xFF2F5EB0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    InfoContact(
                      query: queryData,
                      icon: FontAwesomeIcons.phoneAlt,
                      text: "Phone",
                      subtext: "+91 9930363344",
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    InfoContact(
                      query: queryData,
                      icon: FontAwesomeIcons.mapMarkerAlt,
                      text: "Location",
                      subtext: "Mumbai, India",
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    InfoContact(
                      query: queryData,
                      icon: FontAwesomeIcons.solidEnvelope,
                      text: "Email",
                      subtext: "khaniyadarpan2@gmail.com",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Responsive.isSmallScreen(context) ? 15 : 30),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                          controller: fieldText1,
                          onChanged: (value) {
                            //Do something with the user input.
                            setState(() {
                              name = value;
                            });
                          },
                          decoration: kTextFieldDecoration.copyWith(
                              fillColor: Colors.white, hintText: 'Name*')),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 45,
                    ),
                    Expanded(
                      child: Form(
                        key: formKey,
                        child: ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(10),
                          children: [
                            TextFormField(
                                controller: fieldText2,
                                validator: (email) => email != null &&
                                        !EmailValidator.validate(email)
                                    ? 'Enter Valid Email'
                                    : null,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  //Do something with the user input.
                                  setState(() {
                                    email = value;
                                  });
                                },
                                decoration: kTextFieldDecoration.copyWith(
                                    fillColor: Colors.white,
                                    hintText: 'Email*')),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Responsive.isSmallScreen(context) ? 15 : 30),
                child: TextField(
                    controller: fieldText3,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      //Do something with the user input.
                      setState(() {
                        subject = value;
                      });
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        fillColor: Colors.white, hintText: 'Subject*')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Responsive.isSmallScreen(context) ? 15 : 30),
                child: TextField(
                    controller: fieldText4,
                    minLines: 5,
                    maxLines: 5,
                    onChanged: (value) {
                      //Do something with the user input.
                      setState(() {
                        message = value;
                      });
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        fillColor: Colors.white,
                        hintText: 'Your Message*...')),
              ),
              OnHover(
                child: Material(
                  color: Color(0xFF2F5EB0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MaterialButton(
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width / 5,
                    onPressed: null,
                    // color: Color(0xFF2F5EB0),
                    child: TextButton(
                        child: (isLoading)
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : Text(
                                'Send Mail',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                        onPressed: () async {
                          setState(() {
                            isLoading = true;
                          });
                          try {
                            // Fluttertoast.showToast(
                            //     webBgColor: Colors.red,
                            //     textColor: Colors.white,
                            //     backgroundColor: Colors.red,
                            //     msg: "This is Toast messaget",
                            //     toastLength: Toast.LENGTH_SHORT,
                            //     gravity: ToastGravity.BOTTOM,
                            //     timeInSecForIosWeb: 1,
                            //     webPosition: 'center');
                            final isValidForm =
                                formKey.currentState!.validate();
                            if (name != "" &&
                                subject != "" &&
                                message != "" &&
                                isValidForm) {
                              final serviceId = 'service_bnkox6l';
                              final templateId = 'template_27q4hnq';
                              final userId = 'user_l9LqMzrVpoWGjOBJIOciZ';

                              final url = Uri.parse(
                                  'https://api.emailjs.com/api/v1.0/email/send');
                              final response = await http.post(
                                url,
                                headers: {
                                  'origin': 'http://localhost',
                                  'Content-Type': 'application/json',
                                },
                                body: json.encode({
                                  'service_id': serviceId,
                                  'template_id': templateId,
                                  'user_id': userId,
                                  'template_params': {
                                    'user_name': name,
                                    'user_email': email,
                                    'user_subject': subject,
                                    'user_message': message,
                                  },
                                }),
                              );
                              if (response.statusCode == 200) {
                                setState(() {
                                  isLoading = false;
                                });
                                fieldText1.clear();
                                fieldText2.clear();
                                fieldText3.clear();
                                fieldText4.clear();
                                showToast(
                                    text: 'Email Sent',
                                    icon: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                    color: Color(0xFF4BB543));
                              } else {
                                showToast(
                                  text: 'Error Occured, Try again',
                                  icon: Icon(
                                    Icons.error_outline,
                                    color: Colors.white,
                                  ),
                                  color: Colors.redAccent,
                                );
                              }
                            } else {
                              showToast(
                                text: '* Fill Mandatory Fields correctly',
                                icon: Icon(
                                  Icons.error_outline,
                                  color: Colors.white,
                                ),
                                color: Colors.redAccent,
                              );
                            }
                            ;
                          } catch (e) {
                            setState(() {
                              isLoading = false;
                            });
                            showToast(
                              text: '* Fill Compulsory Fields',
                              icon: Icon(
                                Icons.error_outline,
                                color: Colors.white,
                              ),
                              color: Colors.redAccent,
                            );
                          }
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showToast({text, color, icon}) => toast.showToast(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(
              width: 12.0,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
      gravity: ToastGravity.BOTTOM);

  // Future<int> sendEmail({
  //   required String name,
  //   required String email,
  //   required String subject,
  //   required String message,
  // }) async {
  //   final serviceId = 'service_bnkox6l';
  //   final templateId = 'template_27q4hnq';
  //   final userId = 'user_l9LqMzrVpoWGjOBJIOciZ';

  //   final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  //   final response = await http.post(
  //     url,
  //     headers: {
  //       'origin': 'http://localhost',
  //       'Content-Type': 'application/json',
  //     },
  //     body: json.encode({
  //       'service_id': serviceId,
  //       'template_id': templateId,
  //       'user_id': userId,
  //       'template_params': {
  //         'user_name': name,
  //         'user_email': email,
  //         'user_subject': subject,
  //         'user_message': message,
  //       },
  //     }),
  //   );
  //   // print(response.statusCode);
  //   return response.statusCode;
  // }
}
