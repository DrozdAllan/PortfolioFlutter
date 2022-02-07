import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:portfolio_flutter/models/firestore_message_model.dart';
import 'package:portfolio_flutter/services/mailer.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _mailController;
  late TextEditingController _messageController;

  RegExp regExp = RegExp(r"[^\s]+@[^\s]+\.[^\s]+");

  bool isSuccessSent = false;

  @override
  void initState() {
    super.initState();
    _mailController = TextEditingController();
    _messageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Let\'s talk !',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(34.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextFormField(
                        controller: _mailController,
                        decoration: const InputDecoration(
                          label: Text(
                            'Your mail',
                          ),
                        ),
                        cursorColor: Colors.white,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a valid email address';
                          }
                          if (regExp.hasMatch(value)) {
                            return null;
                          }
                          return 'invalid mail format';
                        },
                      ),
                      TextFormField(
                        controller: _messageController,
                        maxLines: 6,
                        decoration: const InputDecoration(
                          label: Text('Your message'),
                        ),
                        cursorColor: Colors.white,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please at least 80 characters';
                          }
                          return null;
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                isSuccessSent
                                    ? Colors.green
                                    : Color.fromARGB(255, 24, 255, 236))),
                        child: Text(
                            isSuccessSent ? 'Message sent !' : 'Send Message'),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            log('form valid');
                            dynamic resultCode = await Mailer().saveMessage(
                                FirestoreMessage(
                                    mail: _mailController.value.text,
                                    message: _messageController.value.text));
                            if (resultCode == 201) {
                              setState(() {
                                isSuccessSent = true;
                              });
                              _formKey.currentState!.reset();
                            }
                          } else {
                            log('invalid form');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
